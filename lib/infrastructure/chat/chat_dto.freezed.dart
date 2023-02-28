// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatDto _$ChatDtoFromJson(Map<String, dynamic> json) {
  return _ChatDto.fromJson(json);
}

/// @nodoc
mixin _$ChatDto {
  @DocumentReferenceConverter()
  List<DocumentReference<Object?>> get members =>
      throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  Timestamp get date => throw _privateConstructorUsedError;
  List<MessageChatDto> get messages => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference<Object?>? get documentReference =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatDtoCopyWith<ChatDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDtoCopyWith<$Res> {
  factory $ChatDtoCopyWith(ChatDto value, $Res Function(ChatDto) then) =
      _$ChatDtoCopyWithImpl<$Res, ChatDto>;
  @useResult
  $Res call(
      {@DocumentReferenceConverter()
          List<DocumentReference<Object?>> members,
      @ServerTimestampConverter()
          Timestamp date,
      List<MessageChatDto> messages,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference<Object?>? documentReference});
}

/// @nodoc
class _$ChatDtoCopyWithImpl<$Res, $Val extends ChatDto>
    implements $ChatDtoCopyWith<$Res> {
  _$ChatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
    Object? date = null,
    Object? messages = null,
    Object? documentReference = freezed,
  }) {
    return _then(_value.copyWith(
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<DocumentReference<Object?>>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageChatDto>,
      documentReference: freezed == documentReference
          ? _value.documentReference
          : documentReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatDtoCopyWith<$Res> implements $ChatDtoCopyWith<$Res> {
  factory _$$_ChatDtoCopyWith(
          _$_ChatDto value, $Res Function(_$_ChatDto) then) =
      __$$_ChatDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DocumentReferenceConverter()
          List<DocumentReference<Object?>> members,
      @ServerTimestampConverter()
          Timestamp date,
      List<MessageChatDto> messages,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference<Object?>? documentReference});
}

/// @nodoc
class __$$_ChatDtoCopyWithImpl<$Res>
    extends _$ChatDtoCopyWithImpl<$Res, _$_ChatDto>
    implements _$$_ChatDtoCopyWith<$Res> {
  __$$_ChatDtoCopyWithImpl(_$_ChatDto _value, $Res Function(_$_ChatDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
    Object? date = null,
    Object? messages = null,
    Object? documentReference = freezed,
  }) {
    return _then(_$_ChatDto(
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<DocumentReference<Object?>>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageChatDto>,
      documentReference: freezed == documentReference
          ? _value.documentReference
          : documentReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatDto extends _ChatDto {
  _$_ChatDto(
      {@DocumentReferenceConverter()
          required final List<DocumentReference<Object?>> members,
      @ServerTimestampConverter()
          required this.date,
      required final List<MessageChatDto> messages,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          this.documentReference})
      : _members = members,
        _messages = messages,
        super._();

  factory _$_ChatDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChatDtoFromJson(json);

  final List<DocumentReference<Object?>> _members;
  @override
  @DocumentReferenceConverter()
  List<DocumentReference<Object?>> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  @ServerTimestampConverter()
  final Timestamp date;
  final List<MessageChatDto> _messages;
  @override
  List<MessageChatDto> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  final DocumentReference<Object?>? documentReference;

  @override
  String toString() {
    return 'ChatDto(members: $members, date: $date, messages: $messages, documentReference: $documentReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatDto &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.documentReference, documentReference) ||
                other.documentReference == documentReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_members),
      date,
      const DeepCollectionEquality().hash(_messages),
      documentReference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatDtoCopyWith<_$_ChatDto> get copyWith =>
      __$$_ChatDtoCopyWithImpl<_$_ChatDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatDtoToJson(
      this,
    );
  }
}

abstract class _ChatDto extends ChatDto {
  factory _ChatDto(
      {@DocumentReferenceConverter()
          required final List<DocumentReference<Object?>> members,
      @ServerTimestampConverter()
          required final Timestamp date,
      required final List<MessageChatDto> messages,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          final DocumentReference<Object?>? documentReference}) = _$_ChatDto;
  _ChatDto._() : super._();

  factory _ChatDto.fromJson(Map<String, dynamic> json) = _$_ChatDto.fromJson;

  @override
  @DocumentReferenceConverter()
  List<DocumentReference<Object?>> get members;
  @override
  @ServerTimestampConverter()
  Timestamp get date;
  @override
  List<MessageChatDto> get messages;
  @override
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference<Object?>? get documentReference;
  @override
  @JsonKey(ignore: true)
  _$$_ChatDtoCopyWith<_$_ChatDto> get copyWith =>
      throw _privateConstructorUsedError;
}
