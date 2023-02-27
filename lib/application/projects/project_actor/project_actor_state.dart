part of 'project_actor_cubit.dart';
@freezed
class ProjectActorState with _$ProjectActorState {
 const factory ProjectActorState.getUserProjectsSuccess(List<Project> projectList)=_GetUserProjectsSuccess;
 const factory ProjectActorState.getUserProjectsFailure(FirebaseFirestoreFailure projectFailure)=_GetUserProjectsFailure;
 const factory ProjectActorState.changePublicityStatusSuccess()=_ChangePublicityStatusSuccess;
 const factory ProjectActorState.changePublicityStatusFailure(FirebaseFirestoreFailure failureException)=_ChangePublicityStatusFailure;
const factory ProjectActorState.deleteProjectSuccess()=_DeleteProjectSuccess;
 const factory ProjectActorState.deleteProjectFailure(FirebaseFirestoreFailure failureException)=_DeleteProjectFailure;
 const factory ProjectActorState.quitProjectSuccess()=_QuitProjectSuccess;
 const factory ProjectActorState.quitProjectFailure(FirebaseFirestoreFailure failureException)=_QuitProjectFailure;
const factory ProjectActorState.loadingProgressState()=_LoadingProgressState;
 const factory ProjectActorState.initial()=_Initial;
}
