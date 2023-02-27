import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/auth/i_auth_facade.dart';
import 'package:chat/domain/chat/message_chat.dart';
import 'package:chat/domain/core/errors.dart';
import 'package:chat/domain/projects/i_project_repository.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:chat/domain/projects/task.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';
import 'package:chat/infrastructure/projects/project_dto.dart';
import 'package:chat/infrastructure/users/user_dto.dart';
@LazySingleton(as: IProjectRepository)
class ProjectRepository implements IProjectRepository {
  final FirebaseFirestore firebaseFirestore;
  final IAuthFacade _authFacade;
  final bool isTest;
  ProjectRepository(this.firebaseFirestore, this._authFacade,{this.isTest=false});

  @override
  Stream<Either<FirebaseFirestoreFailure, List<Project>>> watchAllProjects() async* {
    final userOption =  _authFacade.getSignedInUserId();
    final userId =
        "users/${userOption.getOrElse(() => throw NotAuthenticatedError())}";
    Stream<Either<FirebaseFirestoreFailure, List<ProjectDto>>> dtoStream =
    firebaseFirestore.projectCollection
        .where("members",
        arrayContains: firebaseFirestore.doc(userId))
        .snapshots()
        .map((projects) => right<FirebaseFirestoreFailure, List<ProjectDto>>(
        projects.docs.map((project) {
          return ProjectDto.fromFirestore(project);
        }).toList()));
    await for (final dtoProject in dtoStream) {
      final a=await Future.wait((await Future.wait(dtoProject
          .getOrElse(() => [])
          .map((projectDto) async => await toDomain(projectDto))))
          .map((project) => getRightsProject(project, userId))
          .map((project) => project.copyWith(
          tasks: project.tasks
              .map((task) => task.copyWith(
              canBeModifiedAndIsAdmin: project.canBeModifiedAndIsAdmin,
              canChangeDoneStatus:
              setCanChangeDoneStatus(task, project, userId)))
              .toList())
      )
          .map((project)  async => project.copyWith(messages: await getUsersForMessages(project.copyWith(messages: setMessagesInColumn(project)))))
          .toList());
      yield right(a);
    }
  }

  Future<List<MessageChat>> getUsersForMessages(Project project)async{
      if(project.messages.isEmpty){return [];}
      //print(project.messages);
      try{
        final messages=await Future.wait(project.messages.map((message)async =>  message.copyWith(sentFrom: UserDto.fromFirestore(await message.sentFrom.reference.get()).toDomain())).toList());
        return messages;
      }catch(e){
        return [];
      }
  }
  List<MessageChat> setMessagesInColumn(Project project)
  {
    List<MessageChat> list=[];
    final messages=project.messages;
    final userOption = _authFacade.getSignedInUserId();
    final uid = userOption.getOrElse(() => throw NotAuthenticatedError());
    if(messages.isNotEmpty){
      for(int i=0;i<messages.length-1;i++){
        list.add(messages[i].copyWith(isLastMessageInColumn:messages[i+1].sentFrom!=messages[i].sentFrom));
      }
      list.add(messages.last);
      list=list.map((message) => message.copyWith(sentByMe: message.sentFrom.reference.id==uid)).toList();
    }
    return list;
  }
  Future<Project> toDomain(ProjectDto projectDto) async {
    List<User> memberList = await getUsersFromReference(projectDto.members);
    User owner = (await getUsersFromReference(projectDto.members)).first;
    final project = projectDto.toDomain(owner, memberList);
    return project;
  }

  Future<List<User>> getUsersFromReference(
      List<DocumentReference> userReferences) async {
    return Future.wait(userReferences.map((userRef) async {
      final user = UserDto.fromFirestore((await userRef.get())).toDomain();
      return user;
    }).toList());
  }

  bool setCanChangeDoneStatus(Task task, Project project, String userId) {
    return project.canBeModifiedAndIsAdmin.fold(
            () => false,
            (isAdmin) => isAdmin
            ? true
            : task.assignee
            .fold(() => false, (user) => user.path == userId));
  }

  Project getRightsProject(Project project, String userId) {
    return project.copyWith(
        canBeModifiedAndIsAdmin: (project.members
            .where((member) => member.reference.path.contains(userId))
            .isNotEmpty)
            ? (project.owner.reference.path.contains(userId)
            ? some(true)
            : some(false))
            : none());
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> createProject(Project project,{String? documentId}) async {
    try {
      final userOption = _authFacade.getSignedInUserId();
      final userId = userOption
          .getOrElse(() => throw NotAuthenticatedError())
          ;
      project = project.copyWith(
          owner: User.empty(firebaseFirestore: firebaseFirestore)
              .copyWith(reference: firebaseFirestore.doc("users/$userId")));
      project = project.copyWith(members: [
        User.empty(firebaseFirestore: firebaseFirestore)
            .copyWith(reference: firebaseFirestore.doc("users/$userId"))
      ]);
      final projectDto=ProjectDto.fromDomain(project).copyWith(reference: null).toJson();
      if(documentId==null){
        await firebaseFirestore.projectCollection.add(projectDto);
      }else{
        await firebaseFirestore.projectCollection.doc(documentId).set(projectDto);
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> deleteProject(Project project) async {
    try {
      await project.reference.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> updateProject(Project project) async {
    try {
      await project.reference.update({
        'name': project.projectName.getOrCrash(), // John Doe
      });
      return right(unit);
    } on FirebaseException catch (e) {
      print(e.message);
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> createTask(
      Task task, DocumentReference reference) async {
    try {

      await reference.update({
        "tasks": FieldValue.arrayUnion([TaskDto.fromDomain(task).toJson()])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> deleteTask(
      Task task, DocumentReference<Object?> reference) async {
    try {
      await reference.update({
        "tasks": FieldValue.arrayRemove([TaskDto.fromDomain(task).toJson()])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> updateTask(
      Task task, DocumentReference<Object?> reference, Task initialTask) async {
    try {
      await reference.update({
        "tasks": FieldValue.arrayUnion([TaskDto.fromDomain(task).toJson()])
      });
      await reference.update({
        "tasks":
        FieldValue.arrayRemove([TaskDto.fromDomain(initialTask).toJson()])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> addProjectMember(
      Project project, User user) async {
    try {
      await project.reference.update({
        "members": FieldValue.arrayUnion([user.reference])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> deleteProjectMember(
      Project project, User user) async {
    try {
      await project.reference.update({
        "members": FieldValue.arrayRemove([user.reference])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> changeDoneStatus(
      Task task, DocumentReference reference) async {
    try {
      await reference.update({
        "tasks": FieldValue.arrayUnion(
            [TaskDto.fromDomain(task.copyWith(isDone: !task.isDone)).toJson()])
      });
      await reference.update({
        "tasks": FieldValue.arrayRemove([TaskDto.fromDomain(task).toJson()])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, List<Project>>> getUserProjects(
      User user) async {
    try {
      final userOption =_authFacade.getSignedInUserId();
      final userId = "users/${userOption
          .getOrElse(() => throw NotAuthenticatedError())
          }";
      final data = (await firebaseFirestore
          .projectCollection
          .where("members", arrayContains: user.reference)
          .where("isPublic", isEqualTo: true)
          .get());
      List<Project> projects = (await Future.wait(
          data.docs.map((project) async {
            return toDomain(ProjectDto.fromFirestore(project));
          })))
          .map((project) => getRightsProject(project, userId))
          .map((project) => project.copyWith(
          tasks: project.tasks
              .map((task) => task.copyWith(
              canBeModifiedAndIsAdmin: project.canBeModifiedAndIsAdmin,
              canChangeDoneStatus:
              setCanChangeDoneStatus(task, project, userId)))
              .toList()))
          .toList();
      return right(projects);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> changePublicityStatus(
      Project project) async {
    try {
      await project.reference.update({
        'isPublic': !project.isPublic, // John Doe
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> changeTaskAssignee(Task task, DocumentReference<Object?> reference,User user) async {
    try {
      await reference.update({
        "tasks": FieldValue.arrayUnion(
            [TaskDto.fromDomain(task.copyWith(assignee:some(user.reference))).toJson()])
      });
      await reference.update({
        "tasks": FieldValue.arrayRemove([TaskDto.fromDomain(task).toJson()])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> quitProject(Project project) async{
    try {
      final userOption =  _authFacade.getSignedInUserId();
      final userId =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      List<Task> assignedTasks=project.tasks.where((task) => task.assignee.fold(() => false, (assignee) => assignee.id==userId)).toList();
      for(Task assignedTask in assignedTasks){
        await project.reference.update({
          "tasks":
          FieldValue.arrayRemove([TaskDto.fromDomain(assignedTask).toJson()])
        });
        await project.reference.update({
          "tasks": FieldValue.arrayUnion([TaskDto.fromDomain(assignedTask.copyWith(assignee: none())).toJson()])
        });
      }
      await project.reference.update({
        "members": FieldValue.arrayRemove([
          firebaseFirestore.doc("users/$userId")
        ])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> deleteTaskAssignee(Task task, DocumentReference<Object?> reference) async{
    try {
      await reference.update({
        "tasks": FieldValue.arrayRemove([TaskDto.fromDomain(task).toJson()])
      });
      await reference.update({
        "tasks": FieldValue.arrayUnion(
            [TaskDto.fromDomain(task.copyWith(assignee:none())).toJson()])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }




}
