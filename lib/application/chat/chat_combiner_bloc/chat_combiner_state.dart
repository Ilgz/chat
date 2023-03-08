part of 'chat_combiner_cubit.dart';

@freezed
class ChatCombinerState with _$ChatCombinerState {
  const factory ChatCombinerState.initial()=_Initial;
  const factory ChatCombinerState.loadInProgress()=_LoadInProgress;
  const factory ChatCombinerState.loadSuccess(List<Chat> chats)=ChatSearchLoadSuccess;
  const factory ChatCombinerState.loadFailure(FirebaseFirestoreFailure chatFailure)=_LoadFailure;
}