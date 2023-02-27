import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/task.dart';
import 'package:chat/domain/projects/value_objects.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/infrastructure/chat/message_chat_dto.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';

part 'project_dto.freezed.dart';
part 'project_dto.g.dart';

@freezed
abstract class ProjectDto implements _$ProjectDto {
  ProjectDto._();

  factory ProjectDto(
      {required String name,
      required bool isPublic,
      @ServerTimestampConverter()
          required Timestamp date,
      @DocumentReferenceConverter()
          required DocumentReference owner,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference? reference,
      @DocumentReferenceConverter()
          required List<DocumentReference> members,
        required List<MessageChatDto> messages,
      required List<TaskDto> tasks}) = _ProjectDto;
  factory ProjectDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectDtoFromJson(json);

  factory ProjectDto.fromDomain(Project project) => ProjectDto(
      name: project.projectName.getOrCrash(),
      isPublic: project.isPublic,
      date: project.date,
      owner: project.owner.reference,
      members: project.members.map((member) => member.reference).toList(),
      tasks: project.tasks.map((task) => TaskDto.fromDomain(task)).toList(),
      messages: project.messages.map((message) => MessageChatDto.fromDomain(message)).toList()
  );

  factory ProjectDto.fromFirestore(QueryDocumentSnapshot doc) {
    return ProjectDto.fromJson(doc.data()! as Map<String, dynamic>).copyWith(
      reference: doc.reference,
    );
  }

  Project toDomain(User owner,List<User> members) {
    return Project(
        projectName: ProjectName(name),
        isPublic: isPublic,
        owner: owner,
        reference: reference!,
        date: date,
        members: members,
        canBeModifiedAndIsAdmin: none(),
        messages: messages.map((messageDto) => messageDto.toDomain()).toList(),
        tasks: tasks
            .map((task) => Task(
                taskName: TaskName(task.itemName),
                isDone: task.complete,
                date: task.date,
            assignee: optionOf(task.owner),
                canChangeDoneStatus: false,
                canBeModifiedAndIsAdmin: none()))
            .toList());
  }
}



@freezed
abstract class TaskDto implements _$TaskDto {
 TaskDto._();
  factory TaskDto(String itemName,
      bool complete,
      @ServerTimestampConverter() Timestamp date,
      @DocumentReferenceConverter() DocumentReference? owner) = _TaskDto;

  factory TaskDto.fromDomain(Task task) =>
      TaskDto(task.taskName.getOrCrash(),
          task.isDone, task.date, task.assignee.toNullable());

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);

  factory TaskDto.fromFirestore(QueryDocumentSnapshot doc) {
    return TaskDto.fromJson(doc.data()! as Map<String, dynamic>);
    //.copyWith(id: doc.id);
  }
  Task toDomain() {
    return Task(taskName: TaskName(itemName),isDone: complete,isNew: false,assignee: none(),canChangeDoneStatus: false,canBeModifiedAndIsAdmin: none(), date: date);
  }
}
