import 'package:bloc/bloc.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:chat/domain/chat/i_chat_facade.dart';
import 'package:chat/domain/projects/i_project_repository.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_watcher_state.dart';
part 'chat_watcher_cubit.freezed.dart';
@lazySingleton
class ChatWatcherCubit extends Cubit<ChatWatcherState> {
  final IChatFacade _chatFacade;
  ChatWatcherCubit(this._chatFacade) : super(const ChatWatcherState.initial());
  void startWatchAll(){
  emit(const ChatWatcherState.loadInProgress());
  _chatFacade.watchChatRooms().listen((chats) {
  receiveChats(chats);
  });
  }
  void receiveChats (Either<FirebaseFirestoreFailure, List<Chat>> chats) {
  emit(chats.fold((f) => ChatWatcherState.loadFailure(f),
  (chats) => ChatWatcherState.loadSuccess(chats)));
  }

}
