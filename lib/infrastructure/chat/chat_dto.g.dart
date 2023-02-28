// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatDto _$$_ChatDtoFromJson(Map<String, dynamic> json) => _$_ChatDto(
      members: (json['members'] as List<dynamic>)
          .map((e) => const DocumentReferenceConverter()
              .fromJson(e as DocumentReference<Object?>))
          .toList(),
      date:
          const ServerTimestampConverter().fromJson(json['date'] as Timestamp),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageChatDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatDtoToJson(_$_ChatDto instance) =>
    <String, dynamic>{
      'members': instance.members
          .map(const DocumentReferenceConverter().toJson)
          .toList(),
      'date': const ServerTimestampConverter().toJson(instance.date),
      'messages': instance.messages,
    };
