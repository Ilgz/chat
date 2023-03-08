part of 'user_watcher_bloc.dart';

@freezed
class UserWatcherState with _$UserWatcherState {
  const factory UserWatcherState.initial() = _Initial;
  const factory UserWatcherState.loadInProgress()=_LoadInProgress;
  const factory UserWatcherState.loadSuccess(List<User> users)=UsersLoadSuccess;
  const factory UserWatcherState.loadFailure(UserFailure userFailure)=_LoadFailure;
}

