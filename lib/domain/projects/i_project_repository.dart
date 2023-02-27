import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:chat/domain/projects/task.dart';
import 'package:chat/domain/users/user.dart';
abstract class IProjectRepository{
  Stream<Either<FirebaseFirestoreFailure,List<Project>>> watchAllProjects();
  Future<Either<FirebaseFirestoreFailure,List<Project>>> getUserProjects(User user);
  Future<Either<FirebaseFirestoreFailure, Unit>>addProjectMember(Project project,User user);
  Future<Either<FirebaseFirestoreFailure, Unit>>deleteProjectMember(Project project,User user);
  Future<Either<FirebaseFirestoreFailure, Unit>>updateProject(Project project);
  Future<Either<FirebaseFirestoreFailure, Unit>>quitProject(Project project);
  Future<Either<FirebaseFirestoreFailure, Unit>>createProject(Project project,{String? documentId});
  Future<Either<FirebaseFirestoreFailure, Unit>>deleteProject(Project project);
  Future<Either<FirebaseFirestoreFailure, Unit>>updateTask(Task task,DocumentReference documentReference,Task initialTask);
  Future<Either<FirebaseFirestoreFailure, Unit>>createTask(Task task,DocumentReference documentReference);
  Future<Either<FirebaseFirestoreFailure, Unit>>deleteTask(Task task,DocumentReference documentReference);
  Future<Either<FirebaseFirestoreFailure, Unit>> changeDoneStatus(Task task, DocumentReference reference);
  Future<Either<FirebaseFirestoreFailure, Unit>> changeTaskAssignee(Task task, DocumentReference reference,User user);
  Future<Either<FirebaseFirestoreFailure, Unit>> deleteTaskAssignee(Task task, DocumentReference reference);
  Future<Either<FirebaseFirestoreFailure, Unit>> changePublicityStatus(Project project);

}