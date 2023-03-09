import 'package:chat/application/auth/auth_bloc.dart';
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
        @JsonKey(ignore: true)
        DocumentReference? documentReference,
      }) = _ChatDto;
  factory ChatDto.fromJson(Map<String, dynamic> json) =>
      _$ChatDtoFromJson(json);
  factory ChatDto.fromDomain(Chat  chat,List<DocumentReference> members) => ChatDto(members: members,date: chat.date,messages:chat.messages.map((message) => MessageChatDto.fromDomain(message)).toList()
  );
  factory ChatDto.fromFirestore(DocumentSnapshot doc) {
    return ChatDto.fromJson(doc.data()! as Map<String, dynamic>).copyWith(
      documentReference: doc.reference,
    );
  }
  Chat toDomain(User chattingWith) {
    return Chat(chattingWith: chattingWith, date: date, messages: messages.map((messageDto) => messageDto.toDomain()).toList(), documentReference: documentReference!, unreadMessages: 0);
  }
}



