// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      name: json['name'] as String,
      email: json['email'] as String,
      nameSearch: (json['nameSearch'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      fcmTokens:
          (json['fcmTokens'] as List<dynamic>).map((e) => e as String).toList(),
      lastActive: _$JsonConverterFromJson<Timestamp, Timestamp>(
          json['lastActive'], const ServerTimestampConverter().fromJson),
      isOnline: json['isOnline'] as bool?,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'nameSearch': instance.nameSearch,
      'fcmTokens': instance.fcmTokens,
      'lastActive': _$JsonConverterToJson<Timestamp, Timestamp>(
          instance.lastActive, const ServerTimestampConverter().toJson),
      'isOnline': instance.isOnline,
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
