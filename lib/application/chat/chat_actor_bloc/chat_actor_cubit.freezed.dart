// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_actor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Chat chat) shouldNavigateToChat,
    required TResult Function() sendMessageSuccess,
    required TResult Function(FirebaseFirestoreFailure chatFailure)
        sendMessageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Chat chat)? shouldNavigateToChat,
    TResult? Function()? sendMessageSuccess,
    TResult? Function(FirebaseFirestoreFailure chatFailure)? sendMessageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Chat chat)? shouldNavigateToChat,
    TResult Function()? sendMessageSuccess,
    TResult Function(FirebaseFirestoreFailure chatFailure)? sendMessageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShouldNavigateToChat value) shouldNavigateToChat,
    required TResult Function(_SendMessageSuccess value) sendMessageSuccess,
    required TResult Function(_SendMessageFailure value) sendMessageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShouldNavigateToChat value)? shouldNavigateToChat,
    TResult? Function(_SendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(_SendMessageFailure value)? sendMessageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShouldNavigateToChat value)? shouldNavigateToChat,
    TResult Function(_SendMessageSuccess value)? sendMessageSuccess,
    TResult Function(_SendMessageFailure value)? sendMessageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatActorStateCopyWith<$Res> {
  factory $ChatActorStateCopyWith(
          ChatActorState value, $Res Function(ChatActorState) then) =
      _$ChatActorStateCopyWithImpl<$Res, ChatActorState>;
}

/// @nodoc
class _$ChatActorStateCopyWithImpl<$Res, $Val extends ChatActorState>
    implements $ChatActorStateCopyWith<$Res> {
  _$ChatActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChatActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Chat chat) shouldNavigateToChat,
    required TResult Function() sendMessageSuccess,
    required TResult Function(FirebaseFirestoreFailure chatFailure)
        sendMessageFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Chat chat)? shouldNavigateToChat,
    TResult? Function()? sendMessageSuccess,
    TResult? Function(FirebaseFirestoreFailure chatFailure)? sendMessageFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Chat chat)? shouldNavigateToChat,
    TResult Function()? sendMessageSuccess,
    TResult Function(FirebaseFirestoreFailure chatFailure)? sendMessageFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShouldNavigateToChat value) shouldNavigateToChat,
    required TResult Function(_SendMessageSuccess value) sendMessageSuccess,
    required TResult Function(_SendMessageFailure value) sendMessageFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShouldNavigateToChat value)? shouldNavigateToChat,
    TResult? Function(_SendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(_SendMessageFailure value)? sendMessageFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShouldNavigateToChat value)? shouldNavigateToChat,
    TResult Function(_SendMessageSuccess value)? sendMessageSuccess,
    TResult Function(_SendMessageFailure value)? sendMessageFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ShouldNavigateToChatCopyWith<$Res> {
  factory _$$_ShouldNavigateToChatCopyWith(_$_ShouldNavigateToChat value,
          $Res Function(_$_ShouldNavigateToChat) then) =
      __$$_ShouldNavigateToChatCopyWithImpl<$Res>;
  @useResult
  $Res call({Chat chat});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$_ShouldNavigateToChatCopyWithImpl<$Res>
    extends _$ChatActorStateCopyWithImpl<$Res, _$_ShouldNavigateToChat>
    implements _$$_ShouldNavigateToChatCopyWith<$Res> {
  __$$_ShouldNavigateToChatCopyWithImpl(_$_ShouldNavigateToChat _value,
      $Res Function(_$_ShouldNavigateToChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$_ShouldNavigateToChat(
      null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$_ShouldNavigateToChat implements _ShouldNavigateToChat {
  const _$_ShouldNavigateToChat(this.chat);

  @override
  final Chat chat;

  @override
  String toString() {
    return 'ChatActorState.shouldNavigateToChat(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShouldNavigateToChat &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShouldNavigateToChatCopyWith<_$_ShouldNavigateToChat> get copyWith =>
      __$$_ShouldNavigateToChatCopyWithImpl<_$_ShouldNavigateToChat>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Chat chat) shouldNavigateToChat,
    required TResult Function() sendMessageSuccess,
    required TResult Function(FirebaseFirestoreFailure chatFailure)
        sendMessageFailure,
  }) {
    return shouldNavigateToChat(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Chat chat)? shouldNavigateToChat,
    TResult? Function()? sendMessageSuccess,
    TResult? Function(FirebaseFirestoreFailure chatFailure)? sendMessageFailure,
  }) {
    return shouldNavigateToChat?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Chat chat)? shouldNavigateToChat,
    TResult Function()? sendMessageSuccess,
    TResult Function(FirebaseFirestoreFailure chatFailure)? sendMessageFailure,
    required TResult orElse(),
  }) {
    if (shouldNavigateToChat != null) {
      return shouldNavigateToChat(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShouldNavigateToChat value) shouldNavigateToChat,
    required TResult Function(_SendMessageSuccess value) sendMessageSuccess,
    required TResult Function(_SendMessageFailure value) sendMessageFailure,
  }) {
    return shouldNavigateToChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShouldNavigateToChat value)? shouldNavigateToChat,
    TResult? Function(_SendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(_SendMessageFailure value)? sendMessageFailure,
  }) {
    return shouldNavigateToChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShouldNavigateToChat value)? shouldNavigateToChat,
    TResult Function(_SendMessageSuccess value)? sendMessageSuccess,
    TResult Function(_SendMessageFailure value)? sendMessageFailure,
    required TResult orElse(),
  }) {
    if (shouldNavigateToChat != null) {
      return shouldNavigateToChat(this);
    }
    return orElse();
  }
}

abstract class _ShouldNavigateToChat implements ChatActorState {
  const factory _ShouldNavigateToChat(final Chat chat) =
      _$_ShouldNavigateToChat;

  Chat get chat;
  @JsonKey(ignore: true)
  _$$_ShouldNavigateToChatCopyWith<_$_ShouldNavigateToChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendMessageSuccessCopyWith<$Res> {
  factory _$$_SendMessageSuccessCopyWith(_$_SendMessageSuccess value,
          $Res Function(_$_SendMessageSuccess) then) =
      __$$_SendMessageSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendMessageSuccessCopyWithImpl<$Res>
    extends _$ChatActorStateCopyWithImpl<$Res, _$_SendMessageSuccess>
    implements _$$_SendMessageSuccessCopyWith<$Res> {
  __$$_SendMessageSuccessCopyWithImpl(
      _$_SendMessageSuccess _value, $Res Function(_$_SendMessageSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendMessageSuccess implements _SendMessageSuccess {
  const _$_SendMessageSuccess();

  @override
  String toString() {
    return 'ChatActorState.sendMessageSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendMessageSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Chat chat) shouldNavigateToChat,
    required TResult Function() sendMessageSuccess,
    required TResult Function(FirebaseFirestoreFailure chatFailure)
        sendMessageFailure,
  }) {
    return sendMessageSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Chat chat)? shouldNavigateToChat,
    TResult? Function()? sendMessageSuccess,
    TResult? Function(FirebaseFirestoreFailure chatFailure)? sendMessageFailure,
  }) {
    return sendMessageSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Chat chat)? shouldNavigateToChat,
    TResult Function()? sendMessageSuccess,
    TResult Function(FirebaseFirestoreFailure chatFailure)? sendMessageFailure,
    required TResult orElse(),
  }) {
    if (sendMessageSuccess != null) {
      return sendMessageSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShouldNavigateToChat value) shouldNavigateToChat,
    required TResult Function(_SendMessageSuccess value) sendMessageSuccess,
    required TResult Function(_SendMessageFailure value) sendMessageFailure,
  }) {
    return sendMessageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShouldNavigateToChat value)? shouldNavigateToChat,
    TResult? Function(_SendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(_SendMessageFailure value)? sendMessageFailure,
  }) {
    return sendMessageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShouldNavigateToChat value)? shouldNavigateToChat,
    TResult Function(_SendMessageSuccess value)? sendMessageSuccess,
    TResult Function(_SendMessageFailure value)? sendMessageFailure,
    required TResult orElse(),
  }) {
    if (sendMessageSuccess != null) {
      return sendMessageSuccess(this);
    }
    return orElse();
  }
}

abstract class _SendMessageSuccess implements ChatActorState {
  const factory _SendMessageSuccess() = _$_SendMessageSuccess;
}

/// @nodoc
abstract class _$$_SendMessageFailureCopyWith<$Res> {
  factory _$$_SendMessageFailureCopyWith(_$_SendMessageFailure value,
          $Res Function(_$_SendMessageFailure) then) =
      __$$_SendMessageFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({FirebaseFirestoreFailure chatFailure});

  $FirebaseFirestoreFailureCopyWith<$Res> get chatFailure;
}

/// @nodoc
class __$$_SendMessageFailureCopyWithImpl<$Res>
    extends _$ChatActorStateCopyWithImpl<$Res, _$_SendMessageFailure>
    implements _$$_SendMessageFailureCopyWith<$Res> {
  __$$_SendMessageFailureCopyWithImpl(
      _$_SendMessageFailure _value, $Res Function(_$_SendMessageFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatFailure = null,
  }) {
    return _then(_$_SendMessageFailure(
      null == chatFailure
          ? _value.chatFailure
          : chatFailure // ignore: cast_nullable_to_non_nullable
              as FirebaseFirestoreFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FirebaseFirestoreFailureCopyWith<$Res> get chatFailure {
    return $FirebaseFirestoreFailureCopyWith<$Res>(_value.chatFailure, (value) {
      return _then(_value.copyWith(chatFailure: value));
    });
  }
}

/// @nodoc

class _$_SendMessageFailure implements _SendMessageFailure {
  const _$_SendMessageFailure(this.chatFailure);

  @override
  final FirebaseFirestoreFailure chatFailure;

  @override
  String toString() {
    return 'ChatActorState.sendMessageFailure(chatFailure: $chatFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessageFailure &&
            (identical(other.chatFailure, chatFailure) ||
                other.chatFailure == chatFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageFailureCopyWith<_$_SendMessageFailure> get copyWith =>
      __$$_SendMessageFailureCopyWithImpl<_$_SendMessageFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Chat chat) shouldNavigateToChat,
    required TResult Function() sendMessageSuccess,
    required TResult Function(FirebaseFirestoreFailure chatFailure)
        sendMessageFailure,
  }) {
    return sendMessageFailure(chatFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Chat chat)? shouldNavigateToChat,
    TResult? Function()? sendMessageSuccess,
    TResult? Function(FirebaseFirestoreFailure chatFailure)? sendMessageFailure,
  }) {
    return sendMessageFailure?.call(chatFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Chat chat)? shouldNavigateToChat,
    TResult Function()? sendMessageSuccess,
    TResult Function(FirebaseFirestoreFailure chatFailure)? sendMessageFailure,
    required TResult orElse(),
  }) {
    if (sendMessageFailure != null) {
      return sendMessageFailure(chatFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShouldNavigateToChat value) shouldNavigateToChat,
    required TResult Function(_SendMessageSuccess value) sendMessageSuccess,
    required TResult Function(_SendMessageFailure value) sendMessageFailure,
  }) {
    return sendMessageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShouldNavigateToChat value)? shouldNavigateToChat,
    TResult? Function(_SendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(_SendMessageFailure value)? sendMessageFailure,
  }) {
    return sendMessageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShouldNavigateToChat value)? shouldNavigateToChat,
    TResult Function(_SendMessageSuccess value)? sendMessageSuccess,
    TResult Function(_SendMessageFailure value)? sendMessageFailure,
    required TResult orElse(),
  }) {
    if (sendMessageFailure != null) {
      return sendMessageFailure(this);
    }
    return orElse();
  }
}

abstract class _SendMessageFailure implements ChatActorState {
  const factory _SendMessageFailure(
      final FirebaseFirestoreFailure chatFailure) = _$_SendMessageFailure;

  FirebaseFirestoreFailure get chatFailure;
  @JsonKey(ignore: true)
  _$$_SendMessageFailureCopyWith<_$_SendMessageFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
