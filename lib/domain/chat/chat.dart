import 'package:chat/domain/chat/message_chat.dart';
import 'package:chat/domain/core/failures.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
abstract class Chat implements _$Chat {
  Chat._();

  factory Chat({
    required User chattingWith,
    required Timestamp date,
    required List<MessageChat> messages,
    required DocumentReference documentReference,
    required int unreadMessages
  }) = _Chat;

  Option<ValueFailure<dynamic>> get failureOption {
    return messages
            .map((message) => message.messageContent.failureOrUnit)
            .where((message) => message.isLeft())
            .isNotEmpty
        ? some(ValueFailure.empty(failedValue: ""))
        : none();
  }

  factory Chat.empty({FirebaseFirestore? firebaseFirestore}) {
    final dummyRef = (firebaseFirestore ?? FirebaseFirestore.instance).dummyRef;
    return Chat(
        chattingWith: User.empty(),
        date: Timestamp.now(),
        messages: [],
        documentReference: dummyRef, unreadMessages: 0);
  }
}
