// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageChatDto _$$_MessageChatDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageChatDto(
      content: json['content'] as String,
      date:
          const ServerTimestampConverter().fromJson(json['date'] as Timestamp),
      hasRead: json['hasRead'] as bool?,
      sentFrom: const DocumentReferenceConverter()
          .fromJson(json['sentFrom'] as DocumentReference<Object?>),
    );

Map<String, dynamic> _$$_MessageChatDtoToJson(_$_MessageChatDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'date': const ServerTimestampConverter().toJson(instance.date),
      'hasRead': instance.hasRead,
      'sentFrom': const DocumentReferenceConverter().toJson(instance.sentFrom),
    };
