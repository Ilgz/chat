// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageChatDto _$MessageChatDtoFromJson(Map<String, dynamic> json) {
  return _MessageChatDto.fromJson(json);
}

/// @nodoc
mixin _$MessageChatDto {
  String get content => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  Timestamp get date => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Object?> get sentFrom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageChatDtoCopyWith<MessageChatDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageChatDtoCopyWith<$Res> {
  factory $MessageChatDtoCopyWith(
          MessageChatDto value, $Res Function(MessageChatDto) then) =
      _$MessageChatDtoCopyWithImpl<$Res, MessageChatDto>;
  @useResult
  $Res call(
      {String content,
      @ServerTimestampConverter() Timestamp date,
      @DocumentReferenceConverter() DocumentReference<Object?> sentFrom});
}

/// @nodoc
class _$MessageChatDtoCopyWithImpl<$Res, $Val extends MessageChatDto>
    implements $MessageChatDtoCopyWith<$Res> {
  _$MessageChatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? date = null,
    Object? sentFrom = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      sentFrom: null == sentFrom
          ? _value.sentFrom
          : sentFrom // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageChatDtoCopyWith<$Res>
    implements $MessageChatDtoCopyWith<$Res> {
  factory _$$_MessageChatDtoCopyWith(
          _$_MessageChatDto value, $Res Function(_$_MessageChatDto) then) =
      __$$_MessageChatDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      @ServerTimestampConverter() Timestamp date,
      @DocumentReferenceConverter() DocumentReference<Object?> sentFrom});
}

/// @nodoc
class __$$_MessageChatDtoCopyWithImpl<$Res>
    extends _$MessageChatDtoCopyWithImpl<$Res, _$_MessageChatDto>
    implements _$$_MessageChatDtoCopyWith<$Res> {
  __$$_MessageChatDtoCopyWithImpl(
      _$_MessageChatDto _value, $Res Function(_$_MessageChatDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? date = null,
    Object? sentFrom = null,
  }) {
    return _then(_$_MessageChatDto(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      sentFrom: null == sentFrom
          ? _value.sentFrom
          : sentFrom // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageChatDto extends _MessageChatDto {
  _$_MessageChatDto(
      {required this.content,
      @ServerTimestampConverter() required this.date,
      @DocumentReferenceConverter() required this.sentFrom})
      : super._();

  factory _$_MessageChatDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageChatDtoFromJson(json);

  @override
  final String content;
  @override
  @ServerTimestampConverter()
  final Timestamp date;
  @override
  @DocumentReferenceConverter()
  final DocumentReference<Object?> sentFrom;

  @override
  String toString() {
    return 'MessageChatDto(content: $content, date: $date, sentFrom: $sentFrom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageChatDto &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.sentFrom, sentFrom) ||
                other.sentFrom == sentFrom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, date, sentFrom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageChatDtoCopyWith<_$_MessageChatDto> get copyWith =>
      __$$_MessageChatDtoCopyWithImpl<_$_MessageChatDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageChatDtoToJson(
      this,
    );
  }
}

abstract class _MessageChatDto extends MessageChatDto {
  factory _MessageChatDto(
          {required final String content,
          @ServerTimestampConverter()
              required final Timestamp date,
          @DocumentReferenceConverter()
              required final DocumentReference<Object?> sentFrom}) =
      _$_MessageChatDto;
  _MessageChatDto._() : super._();

  factory _MessageChatDto.fromJson(Map<String, dynamic> json) =
      _$_MessageChatDto.fromJson;

  @override
  String get content;
  @override
  @ServerTimestampConverter()
  Timestamp get date;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Object?> get sentFrom;
  @override
  @JsonKey(ignore: true)
  _$$_MessageChatDtoCopyWith<_$_MessageChatDto> get copyWith =>
      throw _privateConstructorUsedError;
}
