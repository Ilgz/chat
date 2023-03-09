import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat/domain/chat/value_objects.dart';
import 'package:chat/domain/users/user.dart';
part 'message_chat.freezed.dart';
@freezed
abstract class MessageChat implements _$MessageChat {
  MessageChat._();
  factory MessageChat({
    required MessageContent messageContent,
    required User sentFrom,
    required Timestamp date,
    required bool hasRead,
    required bool isLastMessageInColumn,
    required bool sentByMe,
  }  ) = _MessageChat;
  factory MessageChat.empty()=>MessageChat(messageContent: MessageContent(""), sentFrom:User.empty(), date: Timestamp.now(),isLastMessageInColumn: false,hasRead:false,sentByMe: false);
}
