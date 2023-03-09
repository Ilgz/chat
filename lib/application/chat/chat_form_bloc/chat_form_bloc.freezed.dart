// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageContent) messageContentChanged,
    required TResult Function(Project project) sendProjectMessage,
    required TResult Function(Chat chat) markDirectMessageAsHasRead,
    required TResult Function(Chat chat) sendDirectMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent)? messageContentChanged,
    TResult? Function(Project project)? sendProjectMessage,
    TResult? Function(Chat chat)? markDirectMessageAsHasRead,
    TResult? Function(Chat chat)? sendDirectMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent)? messageContentChanged,
    TResult Function(Project project)? sendProjectMessage,
    TResult Function(Chat chat)? markDirectMessageAsHasRead,
    TResult Function(Chat chat)? sendDirectMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageContentChanged value)
        messageContentChanged,
    required TResult Function(_SendProjectMessage value) sendProjectMessage,
    required TResult Function(_MarkDirectMessageAsHasRead value)
        markDirectMessageAsHasRead,
    required TResult Function(_SendDirectMessage value) sendDirectMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageContentChanged value)? messageContentChanged,
    TResult? Function(_SendProjectMessage value)? sendProjectMessage,
    TResult? Function(_MarkDirectMessageAsHasRead value)?
        markDirectMessageAsHasRead,
    TResult? Function(_SendDirectMessage value)? sendDirectMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageContentChanged value)? messageContentChanged,
    TResult Function(_SendProjectMessage value)? sendProjectMessage,
    TResult Function(_MarkDirectMessageAsHasRead value)?
        markDirectMessageAsHasRead,
    TResult Function(_SendDirectMessage value)? sendDirectMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatFormEventCopyWith<$Res> {
  factory $ChatFormEventCopyWith(
          ChatFormEvent value, $Res Function(ChatFormEvent) then) =
      _$ChatFormEventCopyWithImpl<$Res, ChatFormEvent>;
}

/// @nodoc
class _$ChatFormEventCopyWithImpl<$Res, $Val extends ChatFormEvent>
    implements $ChatFormEventCopyWith<$Res> {
  _$ChatFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MessageContentChangedCopyWith<$Res> {
  factory _$$_MessageContentChangedCopyWith(_$_MessageContentChanged value,
          $Res Function(_$_MessageContentChanged) then) =
      __$$_MessageContentChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageContent});
}

/// @nodoc
class __$$_MessageContentChangedCopyWithImpl<$Res>
    extends _$ChatFormEventCopyWithImpl<$Res, _$_MessageContentChanged>
    implements _$$_MessageContentChangedCopyWith<$Res> {
  __$$_MessageContentChangedCopyWithImpl(_$_MessageContentChanged _value,
      $Res Function(_$_MessageContentChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageContent = null,
  }) {
    return _then(_$_MessageContentChanged(
      null == messageContent
          ? _value.messageContent
          : messageContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageContentChanged implements _MessageContentChanged {
  _$_MessageContentChanged(this.messageContent);

  @override
  final String messageContent;

  @override
  String toString() {
    return 'ChatFormEvent.messageContentChanged(messageContent: $messageContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageContentChanged &&
            (identical(other.messageContent, messageContent) ||
                other.messageContent == messageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageContentChangedCopyWith<_$_MessageContentChanged> get copyWith =>
      __$$_MessageContentChangedCopyWithImpl<_$_MessageContentChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageContent) messageContentChanged,
    required TResult Function(Project project) sendProjectMessage,
    required TResult Function(Chat chat) markDirectMessageAsHasRead,
    required TResult Function(Chat chat) sendDirectMessage,
  }) {
    return messageContentChanged(messageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent)? messageContentChanged,
    TResult? Function(Project project)? sendProjectMessage,
    TResult? Function(Chat chat)? markDirectMessageAsHasRead,
    TResult? Function(Chat chat)? sendDirectMessage,
  }) {
    return messageContentChanged?.call(messageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent)? messageContentChanged,
    TResult Function(Project project)? sendProjectMessage,
    TResult Function(Chat chat)? markDirectMessageAsHasRead,
    TResult Function(Chat chat)? sendDirectMessage,
    required TResult orElse(),
  }) {
    if (messageContentChanged != null) {
      return messageContentChanged(messageContent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageContentChanged value)
        messageContentChanged,
    required TResult Function(_SendProjectMessage value) sendProjectMessage,
    required TResult Function(_MarkDirectMessageAsHasRead value)
        markDirectMessageAsHasRead,
    required TResult Function(_SendDirectMessage value) sendDirectMessage,
  }) {
    return messageContentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageContentChanged value)? messageContentChanged,
    TResult? Function(_SendProjectMessage value)? sendProjectMessage,
    TResult? Function(_MarkDirectMessageAsHasRead value)?
        markDirectMessageAsHasRead,
    TResult? Function(_SendDirectMessage value)? sendDirectMessage,
  }) {
    return messageContentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageContentChanged value)? messageContentChanged,
    TResult Function(_SendProjectMessage value)? sendProjectMessage,
    TResult Function(_MarkDirectMessageAsHasRead value)?
        markDirectMessageAsHasRead,
    TResult Function(_SendDirectMessage value)? sendDirectMessage,
    required TResult orElse(),
  }) {
    if (messageContentChanged != null) {
      return messageContentChanged(this);
    }
    return orElse();
  }
}

abstract class _MessageContentChanged implements ChatFormEvent {
  factory _MessageContentChanged(final String messageContent) =
      _$_MessageContentChanged;

  String get messageContent;
  @JsonKey(ignore: true)
  _$$_MessageContentChangedCopyWith<_$_MessageContentChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendProjectMessageCopyWith<$Res> {
  factory _$$_SendProjectMessageCopyWith(_$_SendProjectMessage value,
          $Res Function(_$_SendProjectMessage) then) =
      __$$_SendProjectMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$_SendProjectMessageCopyWithImpl<$Res>
    extends _$ChatFormEventCopyWithImpl<$Res, _$_SendProjectMessage>
    implements _$$_SendProjectMessageCopyWith<$Res> {
  __$$_SendProjectMessageCopyWithImpl(
      _$_SendProjectMessage _value, $Res Function(_$_SendProjectMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$_SendProjectMessage(
      null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$_SendProjectMessage implements _SendProjectMessage {
  _$_SendProjectMessage(this.project);

  @override
  final Project project;

  @override
  String toString() {
    return 'ChatFormEvent.sendProjectMessage(project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendProjectMessage &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendProjectMessageCopyWith<_$_SendProjectMessage> get copyWith =>
      __$$_SendProjectMessageCopyWithImpl<_$_SendProjectMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageContent) messageContentChanged,
    required TResult Function(Project project) sendProjectMessage,
    required TResult Function(Chat chat) markDirectMessageAsHasRead,
    required TResult Function(Chat chat) sendDirectMessage,
  }) {
    return sendProjectMessage(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent)? messageContentChanged,
    TResult? Function(Project project)? sendProjectMessage,
    TResult? Function(Chat chat)? markDirectMessageAsHasRead,
    TResult? Function(Chat chat)? sendDirectMessage,
  }) {
    return sendProjectMessage?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent)? messageContentChanged,
    TResult Function(Project project)? sendProjectMessage,
    TResult Function(Chat chat)? markDirectMessageAsHasRead,
    TResult Function(Chat chat)? sendDirectMessage,
    required TResult orElse(),
  }) {
    if (sendProjectMessage != null) {
      return sendProjectMessage(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageContentChanged value)
        messageContentChanged,
    required TResult Function(_SendProjectMessage value) sendProjectMessage,
    required TResult Function(_MarkDirectMessageAsHasRead value)
        markDirectMessageAsHasRead,
    required TResult Function(_SendDirectMessage value) sendDirectMessage,
  }) {
    return sendProjectMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageContentChanged value)? messageContentChanged,
    TResult? Function(_SendProjectMessage value)? sendProjectMessage,
    TResult? Function(_MarkDirectMessageAsHasRead value)?
        markDirectMessageAsHasRead,
    TResult? Function(_SendDirectMessage value)? sendDirectMessage,
  }) {
    return sendProjectMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageContentChanged value)? messageContentChanged,
    TResult Function(_SendProjectMessage value)? sendProjectMessage,
    TResult Function(_MarkDirectMessageAsHasRead value)?
        markDirectMessageAsHasRead,
    TResult Function(_SendDirectMessage value)? sendDirectMessage,
    required TResult orElse(),
  }) {
    if (sendProjectMessage != null) {
      return sendProjectMessage(this);
    }
    return orElse();
  }
}

abstract class _SendProjectMessage implements ChatFormEvent {
  factory _SendProjectMessage(final Project project) = _$_SendProjectMessage;

  Project get project;
  @JsonKey(ignore: true)
  _$$_SendProjectMessageCopyWith<_$_SendProjectMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MarkDirectMessageAsHasReadCopyWith<$Res> {
  factory _$$_MarkDirectMessageAsHasReadCopyWith(
          _$_MarkDirectMessageAsHasRead value,
          $Res Function(_$_MarkDirectMessageAsHasRead) then) =
      __$$_MarkDirectMessageAsHasReadCopyWithImpl<$Res>;
  @useResult
  $Res call({Chat chat});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$_MarkDirectMessageAsHasReadCopyWithImpl<$Res>
    extends _$ChatFormEventCopyWithImpl<$Res, _$_MarkDirectMessageAsHasRead>
    implements _$$_MarkDirectMessageAsHasReadCopyWith<$Res> {
  __$$_MarkDirectMessageAsHasReadCopyWithImpl(
      _$_MarkDirectMessageAsHasRead _value,
      $Res Function(_$_MarkDirectMessageAsHasRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$_MarkDirectMessageAsHasRead(
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

class _$_MarkDirectMessageAsHasRead implements _MarkDirectMessageAsHasRead {
  _$_MarkDirectMessageAsHasRead(this.chat);

  @override
  final Chat chat;

  @override
  String toString() {
    return 'ChatFormEvent.markDirectMessageAsHasRead(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarkDirectMessageAsHasRead &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarkDirectMessageAsHasReadCopyWith<_$_MarkDirectMessageAsHasRead>
      get copyWith => __$$_MarkDirectMessageAsHasReadCopyWithImpl<
          _$_MarkDirectMessageAsHasRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageContent) messageContentChanged,
    required TResult Function(Project project) sendProjectMessage,
    required TResult Function(Chat chat) markDirectMessageAsHasRead,
    required TResult Function(Chat chat) sendDirectMessage,
  }) {
    return markDirectMessageAsHasRead(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent)? messageContentChanged,
    TResult? Function(Project project)? sendProjectMessage,
    TResult? Function(Chat chat)? markDirectMessageAsHasRead,
    TResult? Function(Chat chat)? sendDirectMessage,
  }) {
    return markDirectMessageAsHasRead?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent)? messageContentChanged,
    TResult Function(Project project)? sendProjectMessage,
    TResult Function(Chat chat)? markDirectMessageAsHasRead,
    TResult Function(Chat chat)? sendDirectMessage,
    required TResult orElse(),
  }) {
    if (markDirectMessageAsHasRead != null) {
      return markDirectMessageAsHasRead(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageContentChanged value)
        messageContentChanged,
    required TResult Function(_SendProjectMessage value) sendProjectMessage,
    required TResult Function(_MarkDirectMessageAsHasRead value)
        markDirectMessageAsHasRead,
    required TResult Function(_SendDirectMessage value) sendDirectMessage,
  }) {
    return markDirectMessageAsHasRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageContentChanged value)? messageContentChanged,
    TResult? Function(_SendProjectMessage value)? sendProjectMessage,
    TResult? Function(_MarkDirectMessageAsHasRead value)?
        markDirectMessageAsHasRead,
    TResult? Function(_SendDirectMessage value)? sendDirectMessage,
  }) {
    return markDirectMessageAsHasRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageContentChanged value)? messageContentChanged,
    TResult Function(_SendProjectMessage value)? sendProjectMessage,
    TResult Function(_MarkDirectMessageAsHasRead value)?
        markDirectMessageAsHasRead,
    TResult Function(_SendDirectMessage value)? sendDirectMessage,
    required TResult orElse(),
  }) {
    if (markDirectMessageAsHasRead != null) {
      return markDirectMessageAsHasRead(this);
    }
    return orElse();
  }
}

abstract class _MarkDirectMessageAsHasRead implements ChatFormEvent {
  factory _MarkDirectMessageAsHasRead(final Chat chat) =
      _$_MarkDirectMessageAsHasRead;

  Chat get chat;
  @JsonKey(ignore: true)
  _$$_MarkDirectMessageAsHasReadCopyWith<_$_MarkDirectMessageAsHasRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendDirectMessageCopyWith<$Res> {
  factory _$$_SendDirectMessageCopyWith(_$_SendDirectMessage value,
          $Res Function(_$_SendDirectMessage) then) =
      __$$_SendDirectMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({Chat chat});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$_SendDirectMessageCopyWithImpl<$Res>
    extends _$ChatFormEventCopyWithImpl<$Res, _$_SendDirectMessage>
    implements _$$_SendDirectMessageCopyWith<$Res> {
  __$$_SendDirectMessageCopyWithImpl(
      _$_SendDirectMessage _value, $Res Function(_$_SendDirectMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$_SendDirectMessage(
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

class _$_SendDirectMessage implements _SendDirectMessage {
  _$_SendDirectMessage(this.chat);

  @override
  final Chat chat;

  @override
  String toString() {
    return 'ChatFormEvent.sendDirectMessage(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendDirectMessage &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendDirectMessageCopyWith<_$_SendDirectMessage> get copyWith =>
      __$$_SendDirectMessageCopyWithImpl<_$_SendDirectMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageContent) messageContentChanged,
    required TResult Function(Project project) sendProjectMessage,
    required TResult Function(Chat chat) markDirectMessageAsHasRead,
    required TResult Function(Chat chat) sendDirectMessage,
  }) {
    return sendDirectMessage(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent)? messageContentChanged,
    TResult? Function(Project project)? sendProjectMessage,
    TResult? Function(Chat chat)? markDirectMessageAsHasRead,
    TResult? Function(Chat chat)? sendDirectMessage,
  }) {
    return sendDirectMessage?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent)? messageContentChanged,
    TResult Function(Project project)? sendProjectMessage,
    TResult Function(Chat chat)? markDirectMessageAsHasRead,
    TResult Function(Chat chat)? sendDirectMessage,
    required TResult orElse(),
  }) {
    if (sendDirectMessage != null) {
      return sendDirectMessage(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageContentChanged value)
        messageContentChanged,
    required TResult Function(_SendProjectMessage value) sendProjectMessage,
    required TResult Function(_MarkDirectMessageAsHasRead value)
        markDirectMessageAsHasRead,
    required TResult Function(_SendDirectMessage value) sendDirectMessage,
  }) {
    return sendDirectMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageContentChanged value)? messageContentChanged,
    TResult? Function(_SendProjectMessage value)? sendProjectMessage,
    TResult? Function(_MarkDirectMessageAsHasRead value)?
        markDirectMessageAsHasRead,
    TResult? Function(_SendDirectMessage value)? sendDirectMessage,
  }) {
    return sendDirectMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageContentChanged value)? messageContentChanged,
    TResult Function(_SendProjectMessage value)? sendProjectMessage,
    TResult Function(_MarkDirectMessageAsHasRead value)?
        markDirectMessageAsHasRead,
    TResult Function(_SendDirectMessage value)? sendDirectMessage,
    required TResult orElse(),
  }) {
    if (sendDirectMessage != null) {
      return sendDirectMessage(this);
    }
    return orElse();
  }
}

abstract class _SendDirectMessage implements ChatFormEvent {
  factory _SendDirectMessage(final Chat chat) = _$_SendDirectMessage;

  Chat get chat;
  @JsonKey(ignore: true)
  _$$_SendDirectMessageCopyWith<_$_SendDirectMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatFormState {
  MessageChat get messageChat => throw _privateConstructorUsedError;
  Option<Either<FirebaseFirestoreFailure, Unit>>
      get sendMessageFailureSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatFormStateCopyWith<ChatFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatFormStateCopyWith<$Res> {
  factory $ChatFormStateCopyWith(
          ChatFormState value, $Res Function(ChatFormState) then) =
      _$ChatFormStateCopyWithImpl<$Res, ChatFormState>;
  @useResult
  $Res call(
      {MessageChat messageChat,
      Option<Either<FirebaseFirestoreFailure, Unit>>
          sendMessageFailureSuccessOption});

  $MessageChatCopyWith<$Res> get messageChat;
}

/// @nodoc
class _$ChatFormStateCopyWithImpl<$Res, $Val extends ChatFormState>
    implements $ChatFormStateCopyWith<$Res> {
  _$ChatFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageChat = null,
    Object? sendMessageFailureSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      messageChat: null == messageChat
          ? _value.messageChat
          : messageChat // ignore: cast_nullable_to_non_nullable
              as MessageChat,
      sendMessageFailureSuccessOption: null == sendMessageFailureSuccessOption
          ? _value.sendMessageFailureSuccessOption
          : sendMessageFailureSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFirestoreFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageChatCopyWith<$Res> get messageChat {
    return $MessageChatCopyWith<$Res>(_value.messageChat, (value) {
      return _then(_value.copyWith(messageChat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatFormStateCopyWith<$Res>
    implements $ChatFormStateCopyWith<$Res> {
  factory _$$_ChatFormStateCopyWith(
          _$_ChatFormState value, $Res Function(_$_ChatFormState) then) =
      __$$_ChatFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageChat messageChat,
      Option<Either<FirebaseFirestoreFailure, Unit>>
          sendMessageFailureSuccessOption});

  @override
  $MessageChatCopyWith<$Res> get messageChat;
}

/// @nodoc
class __$$_ChatFormStateCopyWithImpl<$Res>
    extends _$ChatFormStateCopyWithImpl<$Res, _$_ChatFormState>
    implements _$$_ChatFormStateCopyWith<$Res> {
  __$$_ChatFormStateCopyWithImpl(
      _$_ChatFormState _value, $Res Function(_$_ChatFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageChat = null,
    Object? sendMessageFailureSuccessOption = null,
  }) {
    return _then(_$_ChatFormState(
      messageChat: null == messageChat
          ? _value.messageChat
          : messageChat // ignore: cast_nullable_to_non_nullable
              as MessageChat,
      sendMessageFailureSuccessOption: null == sendMessageFailureSuccessOption
          ? _value.sendMessageFailureSuccessOption
          : sendMessageFailureSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFirestoreFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ChatFormState implements _ChatFormState {
  _$_ChatFormState(
      {required this.messageChat,
      required this.sendMessageFailureSuccessOption});

  @override
  final MessageChat messageChat;
  @override
  final Option<Either<FirebaseFirestoreFailure, Unit>>
      sendMessageFailureSuccessOption;

  @override
  String toString() {
    return 'ChatFormState(messageChat: $messageChat, sendMessageFailureSuccessOption: $sendMessageFailureSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatFormState &&
            (identical(other.messageChat, messageChat) ||
                other.messageChat == messageChat) &&
            (identical(other.sendMessageFailureSuccessOption,
                    sendMessageFailureSuccessOption) ||
                other.sendMessageFailureSuccessOption ==
                    sendMessageFailureSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, messageChat, sendMessageFailureSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatFormStateCopyWith<_$_ChatFormState> get copyWith =>
      __$$_ChatFormStateCopyWithImpl<_$_ChatFormState>(this, _$identity);
}

abstract class _ChatFormState implements ChatFormState {
  factory _ChatFormState(
      {required final MessageChat messageChat,
      required final Option<Either<FirebaseFirestoreFailure, Unit>>
          sendMessageFailureSuccessOption}) = _$_ChatFormState;

  @override
  MessageChat get messageChat;
  @override
  Option<Either<FirebaseFirestoreFailure, Unit>>
      get sendMessageFailureSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ChatFormStateCopyWith<_$_ChatFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
