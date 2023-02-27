import 'package:chat/domain/chat/chat.dart';
import 'package:chat/infrastructure/chat/message_chat_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat/domain/chat/message_chat.dart';
import 'package:chat/domain/chat/value_objects.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';
part 'chat_dto.freezed.dart';
part 'chat_dto.g.dart';
@freezed
abstract class ChatDto implements  _$ChatDto {
  ChatDto._();
  factory ChatDto(
      {
        @DocumentReferenceConverter()
        required List<DocumentReference> members,
        @ServerTimestampConverter()
        required Timestamp date,
        required List<MessageChatDto> messages,
        @DocumentReferenceConverter()
        required DocumentReference documentReference,
      }) = _ChatDto;
  factory ChatDto.fromJson(Map<String, dynamic> json) =>
      _$ChatDtoFromJson(json);
  factory ChatDto.fromDomain(Chat  chat) => ChatDto(members: chat.members.map((member) => member.reference).toList(),      date: chat.date,messages:chat.messages.map((message) => MessageChatDto.fromDomain(message)).toList(),documentReference: chat.documentReference
  );
  factory ChatDto.fromFirestore(DocumentSnapshot doc) {
    return ChatDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
  Chat toDomain(List<User> members) {
    return Chat(members: members, date: date, messages: messages.map((messageDto) => messageDto.toDomain()).toList(), documentReference: documentReference);
  }
}



