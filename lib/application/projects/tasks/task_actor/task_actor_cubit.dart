import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/projects/i_project_repository.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:chat/domain/projects/task.dart';
import 'package:chat/domain/users/user.dart';

part 'task_actor_state.dart';
part 'task_actor_cubit.freezed.dart';
@injectable
class TaskActorCubit extends Cubit<TaskActorState> {
  final IProjectRepository _projectRepository;
  TaskActorCubit(this._projectRepository) : super(const TaskActorState.initial());
  addProjectMember(Project project,User user)async{
    emit(const TaskActorState.loadingProgressState());
    final failureOrSuccess =
    await _projectRepository.addProjectMember(project, user);
    emit(failureOrSuccess.fold(
            (f) => TaskActorState.addProjectMemberFailure(f),
            (_) => const TaskActorState.addProjectMemberSuccess()));
  }
  deleteProjectMember(Project project,User user)async{
    emit(const TaskActorState.loadingProgressState());
    final failureOrSuccess =
    await _projectRepository.deleteProjectMember(project, user);
    emit(failureOrSuccess.fold(
            (f) => TaskActorState.deleteProjectMemberFailure(f),
            (_) => const TaskActorState.deleteProjectMemberSuccess()));
  }
  deleteTask(Task task,DocumentReference reference)async{
    final failureOrSuccess =
    await _projectRepository.deleteTask(task, reference);
    emit(failureOrSuccess.fold(
            (f) => TaskActorState.deleteTaskFailure(f),
            (_) => const TaskActorState.deleteTaskSuccess()));
  }
  changeTaskAssignee(Task task, DocumentReference reference,User user)async{
    final failureOrSuccess =
    await _projectRepository.changeTaskAssignee(
        task, reference, user);
    emit(failureOrSuccess.fold(
            (f) => TaskActorState.changeTaskAssigneeFailure(f),
            (_) => const TaskActorState.changeTaskAssigneeSuccess()));
  }
  changeDoneStatus(Task task, DocumentReference reference)async{
    emit(const TaskActorState.loadingProgressState());
    final failureOrSuccess =
    await _projectRepository.changeDoneStatus(task, reference);
    emit(failureOrSuccess.fold(
            (f) => TaskActorState.changeDoneStatusFailure(f),
            (_) => const TaskActorState.changeDoneStatusSuccess()));
  }
}
