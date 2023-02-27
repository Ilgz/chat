// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageChat {
  MessageContent get messageContent => throw _privateConstructorUsedError;
  User get sentFrom => throw _privateConstructorUsedError;
  Timestamp get date => throw _privateConstructorUsedError;
  bool get isLastMessageInColumn => throw _privateConstructorUsedError;
  bool get sentByMe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageChatCopyWith<MessageChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageChatCopyWith<$Res> {
  factory $MessageChatCopyWith(
          MessageChat value, $Res Function(MessageChat) then) =
      _$MessageChatCopyWithImpl<$Res, MessageChat>;
  @useResult
  $Res call(
      {MessageContent messageContent,
      User sentFrom,
      Timestamp date,
      bool isLastMessageInColumn,
      bool sentByMe});

  $UserCopyWith<$Res> get sentFrom;
}

/// @nodoc
class _$MessageChatCopyWithImpl<$Res, $Val extends MessageChat>
    implements $MessageChatCopyWith<$Res> {
  _$MessageChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageContent = null,
    Object? sentFrom = null,
    Object? date = null,
    Object? isLastMessageInColumn = null,
    Object? sentByMe = null,
  }) {
    return _then(_value.copyWith(
      messageContent: null == messageContent
          ? _value.messageContent
          : messageContent // ignore: cast_nullable_to_non_nullable
              as MessageContent,
      sentFrom: null == sentFrom
          ? _value.sentFrom
          : sentFrom // ignore: cast_nullable_to_non_nullable
              as User,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      isLastMessageInColumn: null == isLastMessageInColumn
          ? _value.isLastMessageInColumn
          : isLastMessageInColumn // ignore: cast_nullable_to_non_nullable
              as bool,
      sentByMe: null == sentByMe
          ? _value.sentByMe
          : sentByMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get sentFrom {
    return $UserCopyWith<$Res>(_value.sentFrom, (value) {
      return _then(_value.copyWith(sentFrom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageChatCopyWith<$Res>
    implements $MessageChatCopyWith<$Res> {
  factory _$$_MessageChatCopyWith(
          _$_MessageChat value, $Res Function(_$_MessageChat) then) =
      __$$_MessageChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageContent messageContent,
      User sentFrom,
      Timestamp date,
      bool isLastMessageInColumn,
      bool sentByMe});

  @override
  $UserCopyWith<$Res> get sentFrom;
}

/// @nodoc
class __$$_MessageChatCopyWithImpl<$Res>
    extends _$MessageChatCopyWithImpl<$Res, _$_MessageChat>
    implements _$$_MessageChatCopyWith<$Res> {
  __$$_MessageChatCopyWithImpl(
      _$_MessageChat _value, $Res Function(_$_MessageChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageContent = null,
    Object? sentFrom = null,
    Object? date = null,
    Object? isLastMessageInColumn = null,
    Object? sentByMe = null,
  }) {
    return _then(_$_MessageChat(
      messageContent: null == messageContent
          ? _value.messageContent
          : messageContent // ignore: cast_nullable_to_non_nullable
              as MessageContent,
      sentFrom: null == sentFrom
          ? _value.sentFrom
          : sentFrom // ignore: cast_nullable_to_non_nullable
              as User,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      isLastMessageInColumn: null == isLastMessageInColumn
          ? _value.isLastMessageInColumn
          : isLastMessageInColumn // ignore: cast_nullable_to_non_nullable
              as bool,
      sentByMe: null == sentByMe
          ? _value.sentByMe
          : sentByMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MessageChat extends _MessageChat {
  _$_MessageChat(
      {required this.messageContent,
      required this.sentFrom,
      required this.date,
      required this.isLastMessageInColumn,
      required this.sentByMe})
      : super._();

  @override
  final MessageContent messageContent;
  @override
  final User sentFrom;
  @override
  final Timestamp date;
  @override
  final bool isLastMessageInColumn;
  @override
  final bool sentByMe;

  @override
  String toString() {
    return 'MessageChat(messageContent: $messageContent, sentFrom: $sentFrom, date: $date, isLastMessageInColumn: $isLastMessageInColumn, sentByMe: $sentByMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageChat &&
            (identical(other.messageContent, messageContent) ||
                other.messageContent == messageContent) &&
            (identical(other.sentFrom, sentFrom) ||
                other.sentFrom == sentFrom) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isLastMessageInColumn, isLastMessageInColumn) ||
                other.isLastMessageInColumn == isLastMessageInColumn) &&
            (identical(other.sentByMe, sentByMe) ||
                other.sentByMe == sentByMe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageContent, sentFrom, date,
      isLastMessageInColumn, sentByMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageChatCopyWith<_$_MessageChat> get copyWith =>
      __$$_MessageChatCopyWithImpl<_$_MessageChat>(this, _$identity);
}

abstract class _MessageChat extends MessageChat {
  factory _MessageChat(
      {required final MessageContent messageContent,
      required final User sentFrom,
      required final Timestamp date,
      required final bool isLastMessageInColumn,
      required final bool sentByMe}) = _$_MessageChat;
  _MessageChat._() : super._();

  @override
  MessageContent get messageContent;
  @override
  User get sentFrom;
  @override
  Timestamp get date;
  @override
  bool get isLastMessageInColumn;
  @override
  bool get sentByMe;
  @override
  @JsonKey(ignore: true)
  _$$_MessageChatCopyWith<_$_MessageChat> get copyWith =>
      throw _privateConstructorUsedError;
}
