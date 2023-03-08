import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/application/users/user_watcher/user_watcher_bloc.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

part 'chat_combiner_cubit.freezed.dart';

part 'chat_combiner_state.dart';

@injectable
class ChatCombinerCubit extends Cubit<ChatCombinerState> {
  final ChatWatcherCubit _chatWatcherCubit;
  final UserWatcherBloc _userWatcherBloc;
  List<Chat> chat=[];
  ChatCombinerCubit(this._chatWatcherCubit, this._userWatcherBloc)
      : super(const ChatCombinerState.initial());
  void watchSearchChats() {
    emit(const ChatCombinerState.loadInProgress());
    final userSubject=BehaviorSubject<UserWatcherState>.seeded(_userWatcherBloc.state);
    final chatSubject=BehaviorSubject<ChatWatcherState>.seeded(_chatWatcherCubit.state);
    final Stream<List<Chat>> stream =
        Rx.combineLatest2(userSubject, chatSubject,
            (userState, chatState) {
           return combineChatsWithUsers(userState, chatState);
    });
    _userWatcherBloc.stream.listen((state) {
      userSubject.add(state);
    });
    _chatWatcherCubit.stream.listen((state) {
      chatSubject.add(state);
    });
    stream.listen((event) {
      receiveChats(event);
    });
  }

  void receiveChats(List<Chat> chats) {
    emit(ChatCombinerState.loadSuccess(chats));
  }
  List<Chat> combineChatsWithUsers(UserWatcherState userState, ChatWatcherState chatState){
    late List<User> users;
    late List<Chat> chats;
    if (userState is UsersLoadSuccess) {
      users = userState.users;
    } else {
      users = [];
    }
    if (chatState is ChatsLoadSuccess) {
      chats = chatState.chats;
    } else {
      chats = [];
    }
    final userChats = users
        .map((user) => Chat.empty().copyWith(chattingWith: user,documentReference:FirebaseFirestore.instance.chatCollection.doc(const Uuid().v1())))
        .toList();
    return List.from(chats)
      ..addAll(userChats.where((userChat) => !chats
          .map((chat) => chat.chattingWith)
          .toList()
          .contains(userChat.chattingWith)));
  }
}
