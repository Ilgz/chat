part of 'user_watcher_bloc.dart';

@freezed
class UserWatcherEvent with _$UserWatcherEvent {
  const factory UserWatcherEvent.startWatchAll()=_StartWatchAll;
  const factory UserWatcherEvent.receiveUsers(Either<UserFailure,List<User>> failureOrUsers)=_ReceiveNotes;
}
