// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectDto _$$_ProjectDtoFromJson(Map<String, dynamic> json) =>
    _$_ProjectDto(
      name: json['name'] as String,
      isPublic: json['isPublic'] as bool,
      date:
          const ServerTimestampConverter().fromJson(json['date'] as Timestamp),
      owner: const DocumentReferenceConverter()
          .fromJson(json['owner'] as DocumentReference<Object?>),
      members: (json['members'] as List<dynamic>)
          .map((e) => const DocumentReferenceConverter()
              .fromJson(e as DocumentReference<Object?>))
          .toList(),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageChatDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => TaskDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProjectDtoToJson(_$_ProjectDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isPublic': instance.isPublic,
      'date': const ServerTimestampConverter().toJson(instance.date),
      'owner': const DocumentReferenceConverter().toJson(instance.owner),
      'members': instance.members
          .map(const DocumentReferenceConverter().toJson)
          .toList(),
      'messages': instance.messages,
      'tasks': instance.tasks,
    };

_$_TaskDto _$$_TaskDtoFromJson(Map<String, dynamic> json) => _$_TaskDto(
      json['itemName'] as String,
      json['complete'] as bool,
      const ServerTimestampConverter().fromJson(json['date'] as Timestamp),
      _$JsonConverterFromJson<DocumentReference<Object?>,
              DocumentReference<Object?>>(
          json['owner'], const DocumentReferenceConverter().fromJson),
    );

Map<String, dynamic> _$$_TaskDtoToJson(_$_TaskDto instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'complete': instance.complete,
      'date': const ServerTimestampConverter().toJson(instance.date),
      'owner': _$JsonConverterToJson<DocumentReference<Object?>,
              DocumentReference<Object?>>(
          instance.owner, const DocumentReferenceConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
