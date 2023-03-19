part of 'chat_actor_cubit.dart';

@freezed
class ChatActorState with _$ChatActorState {
  const factory ChatActorState.initial()=_Initial;
  const factory ChatActorState.shouldNavigateToChat(Chat chat)=_ShouldNavigateToChat;
  const factory ChatActorState.sendMessageSuccess()=_SendMessageSuccess;
  const factory ChatActorState.sendMessageFailure(FirebaseFirestoreFailure chatFailure)=_SendMessageFailure;
}
