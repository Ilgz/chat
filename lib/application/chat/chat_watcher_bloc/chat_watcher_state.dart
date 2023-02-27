part of 'chat_watcher_cubit.dart';

@freezed
class ChatWatcherState with _$ChatWatcherState {
  const factory ChatWatcherState.initial()=_Initial;
  const factory ChatWatcherState.loadInProgress()=_LoadInProgress;
  const factory ChatWatcherState.loadSuccess(List<Chat> chats)=_LoadSuccess;
  const factory ChatWatcherState.loadFailure(FirebaseFirestoreFailure chatFailure)=_LoadFailure;
}
