part of 'profile_actor_cubit.dart';

@freezed
class ProfileActorState with _$ProfileActorState {
  const factory ProfileActorState.initial() = _Initial;
  const factory ProfileActorState.updateActiveStatusSuccess()=_UpdateActiveStatusSuccess;
  const factory ProfileActorState.updateActiveStatusFailure(FirebaseFirestoreFailure projectFailure)=_UpdateActiveStatusFailure;

}
