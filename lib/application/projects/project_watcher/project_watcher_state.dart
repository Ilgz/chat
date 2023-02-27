part of 'project_watcher_bloc.dart';

@freezed
abstract class ProjectWatcherState with _$ProjectWatcherState{
  factory ProjectWatcherState.initial()=_Initial;
  factory ProjectWatcherState.loadInProgress()=_LoadInProgress;
  factory ProjectWatcherState.loadSuccess(List<Project> projects)=_LoadSuccess;
  factory ProjectWatcherState.loadFailure(FirebaseFirestoreFailure projectFailure)=_LoadFailure;

}