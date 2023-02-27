import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/users/i_user_repository.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/domain/users/user_failure.dart';

part 'user_watcher_event.dart';
part 'user_watcher_state.dart';
part 'user_watcher_bloc.freezed.dart';
@injectable
class UserWatcherBloc extends Bloc<UserWatcherEvent, UserWatcherState> {
  IUserRepository iUserRepository;
  UserWatcherBloc(this.iUserRepository) : super(const UserWatcherState.initial()) {
    on<UserWatcherEvent>((event, emit) {
      event.map(startWatchAll: (e){
        emit(const UserWatcherState.loadInProgress());
        iUserRepository.watchAllUsers().listen((users) {
          add(UserWatcherEvent.receiveUsers(users));
        });
      }, receiveUsers: (e){
        emit(e.failureOrUsers.fold((f) => UserWatcherState.loadFailure(f),
                (users) => UserWatcherState.loadSuccess(users)));
      });
    });
  }
}
