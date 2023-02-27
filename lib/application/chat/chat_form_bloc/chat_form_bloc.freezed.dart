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
    required TResult Function(Project project) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent)? messageContentChanged,
    TResult? Function(Project project)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent)? messageContentChanged,
    TResult Function(Project project)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageContentChanged value)
        messageContentChanged,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageContentChanged value)? messageContentChanged,
    TResult? Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageContentChanged value)? messageContentChanged,
    TResult Function(_SendMessage value)? sendMessage,
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
    required TResult Function(Project project) sendMessage,
  }) {
    return messageContentChanged(messageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent)? messageContentChanged,
    TResult? Function(Project project)? sendMessage,
  }) {
    return messageContentChanged?.call(messageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent)? messageContentChanged,
    TResult Function(Project project)? sendMessage,
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
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return messageContentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageContentChanged value)? messageContentChanged,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return messageContentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageContentChanged value)? messageContentChanged,
    TResult Function(_SendMessage value)? sendMessage,
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
abstract class _$$_SendMessageCopyWith<$Res> {
  factory _$$_SendMessageCopyWith(
          _$_SendMessage value, $Res Function(_$_SendMessage) then) =
      __$$_SendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$_SendMessageCopyWithImpl<$Res>
    extends _$ChatFormEventCopyWithImpl<$Res, _$_SendMessage>
    implements _$$_SendMessageCopyWith<$Res> {
  __$$_SendMessageCopyWithImpl(
      _$_SendMessage _value, $Res Function(_$_SendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$_SendMessage(
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

class _$_SendMessage implements _SendMessage {
  _$_SendMessage(this.project);

  @override
  final Project project;

  @override
  String toString() {
    return 'ChatFormEvent.sendMessage(project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessage &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      __$$_SendMessageCopyWithImpl<_$_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageContent) messageContentChanged,
    required TResult Function(Project project) sendMessage,
  }) {
    return sendMessage(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent)? messageContentChanged,
    TResult? Function(Project project)? sendMessage,
  }) {
    return sendMessage?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent)? messageContentChanged,
    TResult Function(Project project)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageContentChanged value)
        messageContentChanged,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageContentChanged value)? messageContentChanged,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageContentChanged value)? messageContentChanged,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatFormEvent {
  factory _SendMessage(final Project project) = _$_SendMessage;

  Project get project;
  @JsonKey(ignore: true)
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
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
