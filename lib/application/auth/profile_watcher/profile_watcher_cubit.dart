import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/auth/i_auth_facade.dart';
import 'package:chat/domain/users/user.dart';

part 'profile_watcher_state.dart';
part 'profile_watcher_cubit.freezed.dart';
@injectable
class ProfileWatcherCubit extends Cubit<ProfileWatcherState> {
  final IAuthFacade _authFacade;
  ProfileWatcherCubit(this._authFacade) : super(const ProfileWatcherState.initial());
  getSignedInUser()async{
    emit(const ProfileWatcherState.loading());
    emit(ProfileWatcherState.getSignedInUserSuccess(await _authFacade.getSignedInUser()));
  }
}
