import 'package:bloc/bloc.dart';
import 'package:chat/domain/auth/i_auth_facade.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_actor_state.dart';
part 'profile_actor_cubit.freezed.dart';
@injectable
class ProfileActorCubit extends Cubit<ProfileActorState> {
  IAuthFacade _authFacade;
  ProfileActorCubit(this._authFacade) : super(const ProfileActorState.initial());
  Future<void> updateActiveStatus(bool isOnline)async{
    final result=await _authFacade.updateActiveStatus(isOnline);
    emit(result.fold((f) =>ProfileActorState.updateActiveStatusFailure(f), (_) =>ProfileActorState.updateActiveStatusSuccess() ));
  }
}
