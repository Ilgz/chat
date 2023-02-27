part of 'task_actor_cubit.dart';

@freezed
class TaskActorState with _$TaskActorState {
  const factory TaskActorState.initial() = _Initial;
  const factory TaskActorState.deleteTaskSuccess()=_DeleteTaskSuccess;
  const factory TaskActorState.deleteTaskFailure(FirebaseFirestoreFailure failureException)=_DeleteTaskFailure;
  const factory TaskActorState.changeTaskAssigneeSuccess()=_ChangeTaskAssigneeSuccess;
  const factory TaskActorState.changeTaskAssigneeFailure(FirebaseFirestoreFailure projectFailure)=_ChangeTaskAssigneeFailure;
  const factory TaskActorState.changeDoneStatusSuccess()=_ChangeDoneStatusSuccess;
  const factory TaskActorState.changeDoneStatusFailure(FirebaseFirestoreFailure failureException)=_ChangeDoneStatusFailure;
  const factory TaskActorState.deleteProjectMemberSuccess()=_DeleteProjectMemberSuccess;
  const factory TaskActorState.deleteProjectMemberFailure(FirebaseFirestoreFailure failureException)=_DeleteProjectMemberFailure;
  const factory TaskActorState.addProjectMemberSuccess()=_AddProjectMemberSuccess;
  const factory TaskActorState.addProjectMemberFailure(FirebaseFirestoreFailure failureException)=_AddProjectMemberFailure;
  const factory TaskActorState.loadingProgressState()=_LoadingProgressState;

}
