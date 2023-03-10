// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Chat {
  User get chattingWith => throw _privateConstructorUsedError;
  Timestamp get date => throw _privateConstructorUsedError;
  List<MessageChat> get messages => throw _privateConstructorUsedError;
  DocumentReference<Object?> get documentReference =>
      throw _privateConstructorUsedError;
  int get unreadMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call(
      {User chattingWith,
      Timestamp date,
      List<MessageChat> messages,
      DocumentReference<Object?> documentReference,
      int unreadMessages});

  $UserCopyWith<$Res> get chattingWith;
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chattingWith = null,
    Object? date = null,
    Object? messages = null,
    Object? documentReference = null,
    Object? unreadMessages = null,
  }) {
    return _then(_value.copyWith(
      chattingWith: null == chattingWith
          ? _value.chattingWith
          : chattingWith // ignore: cast_nullable_to_non_nullable
              as User,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageChat>,
      documentReference: null == documentReference
          ? _value.documentReference
          : documentReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      unreadMessages: null == unreadMessages
          ? _value.unreadMessages
          : unreadMessages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get chattingWith {
    return $UserCopyWith<$Res>(_value.chattingWith, (value) {
      return _then(_value.copyWith(chattingWith: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$_ChatCopyWith(_$_Chat value, $Res Function(_$_Chat) then) =
      __$$_ChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User chattingWith,
      Timestamp date,
      List<MessageChat> messages,
      DocumentReference<Object?> documentReference,
      int unreadMessages});

  @override
  $UserCopyWith<$Res> get chattingWith;
}

/// @nodoc
class __$$_ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res, _$_Chat>
    implements _$$_ChatCopyWith<$Res> {
  __$$_ChatCopyWithImpl(_$_Chat _value, $Res Function(_$_Chat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chattingWith = null,
    Object? date = null,
    Object? messages = null,
    Object? documentReference = null,
    Object? unreadMessages = null,
  }) {
    return _then(_$_Chat(
      chattingWith: null == chattingWith
          ? _value.chattingWith
          : chattingWith // ignore: cast_nullable_to_non_nullable
              as User,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageChat>,
      documentReference: null == documentReference
          ? _value.documentReference
          : documentReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      unreadMessages: null == unreadMessages
          ? _value.unreadMessages
          : unreadMessages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Chat extends _Chat {
  _$_Chat(
      {required this.chattingWith,
      required this.date,
      required final List<MessageChat> messages,
      required this.documentReference,
      required this.unreadMessages})
      : _messages = messages,
        super._();

  @override
  final User chattingWith;
  @override
  final Timestamp date;
  final List<MessageChat> _messages;
  @override
  List<MessageChat> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final DocumentReference<Object?> documentReference;
  @override
  final int unreadMessages;

  @override
  String toString() {
    return 'Chat(chattingWith: $chattingWith, date: $date, messages: $messages, documentReference: $documentReference, unreadMessages: $unreadMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
            (identical(other.chattingWith, chattingWith) ||
                other.chattingWith == chattingWith) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.documentReference, documentReference) ||
                other.documentReference == documentReference) &&
            (identical(other.unreadMessages, unreadMessages) ||
                other.unreadMessages == unreadMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      chattingWith,
      date,
      const DeepCollectionEquality().hash(_messages),
      documentReference,
      unreadMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);
}

abstract class _Chat extends Chat {
  factory _Chat(
      {required final User chattingWith,
      required final Timestamp date,
      required final List<MessageChat> messages,
      required final DocumentReference<Object?> documentReference,
      required final int unreadMessages}) = _$_Chat;
  _Chat._() : super._();

  @override
  User get chattingWith;
  @override
  Timestamp get date;
  @override
  List<MessageChat> get messages;
  @override
  DocumentReference<Object?> get documentReference;
  @override
  int get unreadMessages;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}
