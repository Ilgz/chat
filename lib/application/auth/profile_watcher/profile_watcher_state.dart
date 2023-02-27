part of 'profile_watcher_cubit.dart';

@freezed
class ProfileWatcherState with _$ProfileWatcherState {
  const factory ProfileWatcherState.initial() = _Initial;
  const factory ProfileWatcherState.loading() = _Loading;
  const factory ProfileWatcherState.getSignedInUserSuccess(User user) = _GetSignedInUserSuccess;
  const factory ProfileWatcherState.getSignedInUserFailure() = _GetSignedInUserFailure;
}
