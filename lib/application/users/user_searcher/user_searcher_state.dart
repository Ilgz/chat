part of 'user_searcher_cubit.dart';

@freezed
class UserSearcherState with _$UserSearcherState {
  const factory UserSearcherState.initial() = _Initial;
  const factory UserSearcherState.searchSuccess(List<User> users) = _SearchSuccess;
  const factory UserSearcherState.searchFailure() = _SearchFailure;
}
