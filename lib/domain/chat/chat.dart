import 'package:chat/domain/chat/message_chat.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat/domain/chat/value_objects.dart';
import 'package:chat/domain/users/user.dart';
part 'chat.freezed.dart';
@freezed
abstract class Chat implements _$Chat {
  Chat._();
  factory Chat({
    required List<User> members,
    required Timestamp date,
    required List<MessageChat> messages,
    required DocumentReference documentReference,
  }  ) = _Chat;
  factory Chat.empty({
    FirebaseFirestore? firebaseFirestore
  }){
    final dummyRef=(firebaseFirestore??FirebaseFirestore.instance).dummyRef;
    return Chat(members: [], date: Timestamp.now(),messages: [],documentReference: dummyRef);}
}
