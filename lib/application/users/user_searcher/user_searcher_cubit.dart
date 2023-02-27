import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat/domain/users/user.dart';

part 'user_searcher_state.dart';
part 'user_searcher_cubit.freezed.dart';

class UserSearcherCubit extends Cubit<UserSearcherState> {
  UserSearcherCubit() : super(const UserSearcherState.initial());
  void searchUsers(List<User> userList,String query){
    List<User> searchedUsers=userList.where((user) => user.userName.getOrCrash().toLowerCase().contains(query.toLowerCase())).toList();
    emit(searchedUsers.isNotEmpty?UserSearcherState.searchSuccess(searchedUsers):const UserSearcherState.searchFailure());
}
}
