import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:chat/domain/chat/i_chat_facade.dart';
import 'package:chat/domain/chat/message_chat.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_actor_cubit.freezed.dart';

part 'chat_actor_state.dart';

@injectable
class ChatActorCubit extends Cubit<ChatActorState> {
  final IChatFacade _iChatFacade;
  final ChatWatcherCubit _chatWatcherCubit;
  ChatActorCubit(this._iChatFacade,this._chatWatcherCubit) : super(const ChatActorState.initial());
  Future<void> handleInitialNotification()async{
    print("remote");
    final chatWatcherState=_chatWatcherCubit.state;
    final remoteMessage = await FirebaseMessaging.instance.getInitialMessage();
    //RemoteMessage.fromMap({"senderId": null, "category": null, "collapseKey": "com.sail.chat", "contentAvailable": false, "data": {"chat_id": "KMBKMON0JRCcRJFXmNtF"}, "from": 82807448949, "messageId": "0:1679216265046088%41c5030841c50308", "messageType": null, "mutableContent": false, "notification": {"title": "Hello from API", "titleLocArgs": [], "titleLocKey": null, "body": "Cho tam?", "bodyLocArgs": [], "bodyLocKey": null, "android": {"channelId": null, "clickAction": null, "color": null, "count": null, "imageUrl": null, "link": null, "priority": 0, "smallIcon": null, "sound": null, "ticker": null, "tag": null, "visibility": 0}, "apple": null, "web": null}, "sentTime": 1679216265030, "threadId": null, "ttl": 2419200});
    if(remoteMessage!=null) {
      print(remoteMessage.toMap());
      print("data is"+remoteMessage.data['chat_id'] as String);
      if(chatWatcherState is ChatsLoadSuccess){
        final chat=_getChatFromNotificationId(remoteMessage, chatWatcherState.chats);
        if (chat != Chat.empty()) {
          emit(ChatActorState.shouldNavigateToChat(chat));
        }
      }else{
        late StreamSubscription<ChatWatcherState> subscription;
        subscription = _chatWatcherCubit.stream.listen((chatState) async {
          late List<Chat> chats;
          if (chatState is ChatsLoadSuccess) {
            chats = chatState.chats;
          } else {
            chats = [];
          }
          final chat=_getChatFromNotificationId(remoteMessage, chats);
          if (chat != Chat.empty()) {
            emit(ChatActorState.shouldNavigateToChat(chat));
            await subscription.cancel();
          }
        });
      }

    }
  }
  Chat _getChatFromNotificationId(RemoteMessage remoteMessage,List<Chat> chats){
    final chatId = remoteMessage.data['chat_id'] as String;
    final chat = chats.firstWhere((c) => c.documentReference.id == chatId,
        orElse: () => Chat.empty());
    return chat;
  }
  sendDirectMessage(Chat chat, MessageChat messageChat) async {
    final failureOrSuccess =
        (await _iChatFacade.sendDirectMessage(chat, messageChat));
    emit(failureOrSuccess.fold((f) => ChatActorState.sendMessageFailure(f),
        (_) => ChatActorState.sendMessageSuccess()));
  }

  sendProjectMessage(Project project, MessageChat messageChat) async {
    final failureOrSuccess =
        (await _iChatFacade.sendProjectMessage(project, messageChat));
    emit(failureOrSuccess.fold((f) => ChatActorState.sendMessageFailure(f),
        (_) => ChatActorState.sendMessageSuccess()));
  }
  markDirectMessageAsHasRead(Chat chat) async {
    await _iChatFacade.markDirectMessageAsHasRead(chat);
  }
}
