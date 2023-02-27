part of 'project_watcher_bloc.dart';


@freezed
class ProjectWatcherEvent with _$ProjectWatcherEvent{
  const factory ProjectWatcherEvent.startWatchAll()=_StartWatchAll;
  const factory ProjectWatcherEvent.receiveProjects(Either<FirebaseFirestoreFailure,List<Project>> failureOrProjects)=_ReceiveNotes;
}
