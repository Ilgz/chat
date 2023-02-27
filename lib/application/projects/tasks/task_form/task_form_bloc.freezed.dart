// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskBodyStr) taskBodyChanged,
    required TResult Function(bool editingState) changeEditingState,
    required TResult Function(
            DocumentReference<Object?> documentReference, Task initialTask)
        saveTask,
    required TResult Function(Option<Task> initialProjectOption) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskBodyStr)? taskBodyChanged,
    TResult? Function(bool editingState)? changeEditingState,
    TResult? Function(
            DocumentReference<Object?> documentReference, Task initialTask)?
        saveTask,
    TResult? Function(Option<Task> initialProjectOption)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskBodyStr)? taskBodyChanged,
    TResult Function(bool editingState)? changeEditingState,
    TResult Function(
            DocumentReference<Object?> documentReference, Task initialTask)?
        saveTask,
    TResult Function(Option<Task> initialProjectOption)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskBodyChanged value) taskBodyChanged,
    required TResult Function(_ChangeEditingState value) changeEditingState,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskBodyChanged value)? taskBodyChanged,
    TResult? Function(_ChangeEditingState value)? changeEditingState,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskBodyChanged value)? taskBodyChanged,
    TResult Function(_ChangeEditingState value)? changeEditingState,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormEventCopyWith<$Res> {
  factory $TaskFormEventCopyWith(
          TaskFormEvent value, $Res Function(TaskFormEvent) then) =
      _$TaskFormEventCopyWithImpl<$Res, TaskFormEvent>;
}

/// @nodoc
class _$TaskFormEventCopyWithImpl<$Res, $Val extends TaskFormEvent>
    implements $TaskFormEventCopyWith<$Res> {
  _$TaskFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TaskBodyChangedCopyWith<$Res> {
  factory _$$_TaskBodyChangedCopyWith(
          _$_TaskBodyChanged value, $Res Function(_$_TaskBodyChanged) then) =
      __$$_TaskBodyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskBodyStr});
}

/// @nodoc
class __$$_TaskBodyChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_TaskBodyChanged>
    implements _$$_TaskBodyChangedCopyWith<$Res> {
  __$$_TaskBodyChangedCopyWithImpl(
      _$_TaskBodyChanged _value, $Res Function(_$_TaskBodyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskBodyStr = null,
  }) {
    return _then(_$_TaskBodyChanged(
      null == taskBodyStr
          ? _value.taskBodyStr
          : taskBodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskBodyChanged implements _TaskBodyChanged {
  _$_TaskBodyChanged(this.taskBodyStr);

  @override
  final String taskBodyStr;

  @override
  String toString() {
    return 'TaskFormEvent.taskBodyChanged(taskBodyStr: $taskBodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskBodyChanged &&
            (identical(other.taskBodyStr, taskBodyStr) ||
                other.taskBodyStr == taskBodyStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskBodyStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskBodyChangedCopyWith<_$_TaskBodyChanged> get copyWith =>
      __$$_TaskBodyChangedCopyWithImpl<_$_TaskBodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskBodyStr) taskBodyChanged,
    required TResult Function(bool editingState) changeEditingState,
    required TResult Function(
            DocumentReference<Object?> documentReference, Task initialTask)
        saveTask,
    required TResult Function(Option<Task> initialProjectOption) initialized,
  }) {
    return taskBodyChanged(taskBodyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskBodyStr)? taskBodyChanged,
    TResult? Function(bool editingState)? changeEditingState,
    TResult? Function(
            DocumentReference<Object?> documentReference, Task initialTask)?
        saveTask,
    TResult? Function(Option<Task> initialProjectOption)? initialized,
  }) {
    return taskBodyChanged?.call(taskBodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskBodyStr)? taskBodyChanged,
    TResult Function(bool editingState)? changeEditingState,
    TResult Function(
            DocumentReference<Object?> documentReference, Task initialTask)?
        saveTask,
    TResult Function(Option<Task> initialProjectOption)? initialized,
    required TResult orElse(),
  }) {
    if (taskBodyChanged != null) {
      return taskBodyChanged(taskBodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskBodyChanged value) taskBodyChanged,
    required TResult Function(_ChangeEditingState value) changeEditingState,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_Initialized value) initialized,
  }) {
    return taskBodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskBodyChanged value)? taskBodyChanged,
    TResult? Function(_ChangeEditingState value)? changeEditingState,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return taskBodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskBodyChanged value)? taskBodyChanged,
    TResult Function(_ChangeEditingState value)? changeEditingState,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (taskBodyChanged != null) {
      return taskBodyChanged(this);
    }
    return orElse();
  }
}

abstract class _TaskBodyChanged implements TaskFormEvent {
  factory _TaskBodyChanged(final String taskBodyStr) = _$_TaskBodyChanged;

  String get taskBodyStr;
  @JsonKey(ignore: true)
  _$$_TaskBodyChangedCopyWith<_$_TaskBodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeEditingStateCopyWith<$Res> {
  factory _$$_ChangeEditingStateCopyWith(_$_ChangeEditingState value,
          $Res Function(_$_ChangeEditingState) then) =
      __$$_ChangeEditingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool editingState});
}

/// @nodoc
class __$$_ChangeEditingStateCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_ChangeEditingState>
    implements _$$_ChangeEditingStateCopyWith<$Res> {
  __$$_ChangeEditingStateCopyWithImpl(
      _$_ChangeEditingState _value, $Res Function(_$_ChangeEditingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editingState = null,
  }) {
    return _then(_$_ChangeEditingState(
      null == editingState
          ? _value.editingState
          : editingState // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeEditingState implements _ChangeEditingState {
  _$_ChangeEditingState(this.editingState);

  @override
  final bool editingState;

  @override
  String toString() {
    return 'TaskFormEvent.changeEditingState(editingState: $editingState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeEditingState &&
            (identical(other.editingState, editingState) ||
                other.editingState == editingState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editingState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeEditingStateCopyWith<_$_ChangeEditingState> get copyWith =>
      __$$_ChangeEditingStateCopyWithImpl<_$_ChangeEditingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskBodyStr) taskBodyChanged,
    required TResult Function(bool editingState) changeEditingState,
    required TResult Function(
            DocumentReference<Object?> documentReference, Task initialTask)
        saveTask,
    required TResult Function(Option<Task> initialProjectOption) initialized,
  }) {
    return changeEditingState(editingState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskBodyStr)? taskBodyChanged,
    TResult? Function(bool editingState)? changeEditingState,
    TResult? Function(
            DocumentReference<Object?> documentReference, Task initialTask)?
        saveTask,
    TResult? Function(Option<Task> initialProjectOption)? initialized,
  }) {
    return changeEditingState?.call(editingState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskBodyStr)? taskBodyChanged,
    TResult Function(bool editingState)? changeEditingState,
    TResult Function(
            DocumentReference<Object?> documentReference, Task initialTask)?
        saveTask,
    TResult Function(Option<Task> initialProjectOption)? initialized,
    required TResult orElse(),
  }) {
    if (changeEditingState != null) {
      return changeEditingState(editingState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskBodyChanged value) taskBodyChanged,
    required TResult Function(_ChangeEditingState value) changeEditingState,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_Initialized value) initialized,
  }) {
    return changeEditingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskBodyChanged value)? taskBodyChanged,
    TResult? Function(_ChangeEditingState value)? changeEditingState,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return changeEditingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskBodyChanged value)? taskBodyChanged,
    TResult Function(_ChangeEditingState value)? changeEditingState,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (changeEditingState != null) {
      return changeEditingState(this);
    }
    return orElse();
  }
}

abstract class _ChangeEditingState implements TaskFormEvent {
  factory _ChangeEditingState(final bool editingState) = _$_ChangeEditingState;

  bool get editingState;
  @JsonKey(ignore: true)
  _$$_ChangeEditingStateCopyWith<_$_ChangeEditingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveTaskCopyWith<$Res> {
  factory _$$_SaveTaskCopyWith(
          _$_SaveTask value, $Res Function(_$_SaveTask) then) =
      __$$_SaveTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentReference<Object?> documentReference, Task initialTask});

  $TaskCopyWith<$Res> get initialTask;
}

/// @nodoc
class __$$_SaveTaskCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_SaveTask>
    implements _$$_SaveTaskCopyWith<$Res> {
  __$$_SaveTaskCopyWithImpl(
      _$_SaveTask _value, $Res Function(_$_SaveTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentReference = null,
    Object? initialTask = null,
  }) {
    return _then(_$_SaveTask(
      null == documentReference
          ? _value.documentReference
          : documentReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      null == initialTask
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get initialTask {
    return $TaskCopyWith<$Res>(_value.initialTask, (value) {
      return _then(_value.copyWith(initialTask: value));
    });
  }
}

/// @nodoc

class _$_SaveTask implements _SaveTask {
  _$_SaveTask(this.documentReference, this.initialTask);

  @override
  final DocumentReference<Object?> documentReference;
  @override
  final Task initialTask;

  @override
  String toString() {
    return 'TaskFormEvent.saveTask(documentReference: $documentReference, initialTask: $initialTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveTask &&
            (identical(other.documentReference, documentReference) ||
                other.documentReference == documentReference) &&
            (identical(other.initialTask, initialTask) ||
                other.initialTask == initialTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, documentReference, initialTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveTaskCopyWith<_$_SaveTask> get copyWith =>
      __$$_SaveTaskCopyWithImpl<_$_SaveTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskBodyStr) taskBodyChanged,
    required TResult Function(bool editingState) changeEditingState,
    required TResult Function(
            DocumentReference<Object?> documentReference, Task initialTask)
        saveTask,
    required TResult Function(Option<Task> initialProjectOption) initialized,
  }) {
    return saveTask(documentReference, initialTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskBodyStr)? taskBodyChanged,
    TResult? Function(bool editingState)? changeEditingState,
    TResult? Function(
            DocumentReference<Object?> documentReference, Task initialTask)?
        saveTask,
    TResult? Function(Option<Task> initialProjectOption)? initialized,
  }) {
    return saveTask?.call(documentReference, initialTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskBodyStr)? taskBodyChanged,
    TResult Function(bool editingState)? changeEditingState,
    TResult Function(
            DocumentReference<Object?> documentReference, Task initialTask)?
        saveTask,
    TResult Function(Option<Task> initialProjectOption)? initialized,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(documentReference, initialTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskBodyChanged value) taskBodyChanged,
    required TResult Function(_ChangeEditingState value) changeEditingState,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_Initialized value) initialized,
  }) {
    return saveTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskBodyChanged value)? taskBodyChanged,
    TResult? Function(_ChangeEditingState value)? changeEditingState,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return saveTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskBodyChanged value)? taskBodyChanged,
    TResult Function(_ChangeEditingState value)? changeEditingState,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(this);
    }
    return orElse();
  }
}

abstract class _SaveTask implements TaskFormEvent {
  factory _SaveTask(final DocumentReference<Object?> documentReference,
      final Task initialTask) = _$_SaveTask;

  DocumentReference<Object?> get documentReference;
  Task get initialTask;
  @JsonKey(ignore: true)
  _$$_SaveTaskCopyWith<_$_SaveTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Task> initialProjectOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialProjectOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialProjectOption
          ? _value.initialProjectOption
          : initialProjectOption // ignore: cast_nullable_to_non_nullable
              as Option<Task>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialProjectOption);

  @override
  final Option<Task> initialProjectOption;

  @override
  String toString() {
    return 'TaskFormEvent.initialized(initialProjectOption: $initialProjectOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialProjectOption, initialProjectOption) ||
                other.initialProjectOption == initialProjectOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialProjectOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskBodyStr) taskBodyChanged,
    required TResult Function(bool editingState) changeEditingState,
    required TResult Function(
            DocumentReference<Object?> documentReference, Task initialTask)
        saveTask,
    required TResult Function(Option<Task> initialProjectOption) initialized,
  }) {
    return initialized(initialProjectOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskBodyStr)? taskBodyChanged,
    TResult? Function(bool editingState)? changeEditingState,
    TResult? Function(
            DocumentReference<Object?> documentReference, Task initialTask)?
        saveTask,
    TResult? Function(Option<Task> initialProjectOption)? initialized,
  }) {
    return initialized?.call(initialProjectOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskBodyStr)? taskBodyChanged,
    TResult Function(bool editingState)? changeEditingState,
    TResult Function(
            DocumentReference<Object?> documentReference, Task initialTask)?
        saveTask,
    TResult Function(Option<Task> initialProjectOption)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialProjectOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskBodyChanged value) taskBodyChanged,
    required TResult Function(_ChangeEditingState value) changeEditingState,
    required TResult Function(_SaveTask value) saveTask,
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskBodyChanged value)? taskBodyChanged,
    TResult? Function(_ChangeEditingState value)? changeEditingState,
    TResult? Function(_SaveTask value)? saveTask,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskBodyChanged value)? taskBodyChanged,
    TResult Function(_ChangeEditingState value)? changeEditingState,
    TResult Function(_SaveTask value)? saveTask,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TaskFormEvent {
  const factory _Initialized(final Option<Task> initialProjectOption) =
      _$_Initialized;

  Option<Task> get initialProjectOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskFormState {
  Task get task => throw _privateConstructorUsedError;
  AutovalidateMode? get showErrorMessages => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  Option<Either<FirebaseFirestoreFailure, Unit>>
      get projectFailureSuccessOption => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskFormStateCopyWith<TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormStateCopyWith<$Res> {
  factory $TaskFormStateCopyWith(
          TaskFormState value, $Res Function(TaskFormState) then) =
      _$TaskFormStateCopyWithImpl<$Res, TaskFormState>;
  @useResult
  $Res call(
      {Task task,
      AutovalidateMode? showErrorMessages,
      bool isProcessing,
      Option<Either<FirebaseFirestoreFailure, Unit>>
          projectFailureSuccessOption,
      bool isEditing});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskFormStateCopyWithImpl<$Res, $Val extends TaskFormState>
    implements $TaskFormStateCopyWith<$Res> {
  _$TaskFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? showErrorMessages = freezed,
    Object? isProcessing = null,
    Object? projectFailureSuccessOption = null,
    Object? isEditing = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      showErrorMessages: freezed == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      projectFailureSuccessOption: null == projectFailureSuccessOption
          ? _value.projectFailureSuccessOption
          : projectFailureSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFirestoreFailure, Unit>>,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskFormStateCopyWith<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  factory _$$_TaskFormStateCopyWith(
          _$_TaskFormState value, $Res Function(_$_TaskFormState) then) =
      __$$_TaskFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Task task,
      AutovalidateMode? showErrorMessages,
      bool isProcessing,
      Option<Either<FirebaseFirestoreFailure, Unit>>
          projectFailureSuccessOption,
      bool isEditing});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TaskFormStateCopyWithImpl<$Res>
    extends _$TaskFormStateCopyWithImpl<$Res, _$_TaskFormState>
    implements _$$_TaskFormStateCopyWith<$Res> {
  __$$_TaskFormStateCopyWithImpl(
      _$_TaskFormState _value, $Res Function(_$_TaskFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? showErrorMessages = freezed,
    Object? isProcessing = null,
    Object? projectFailureSuccessOption = null,
    Object? isEditing = null,
  }) {
    return _then(_$_TaskFormState(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      showErrorMessages: freezed == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      projectFailureSuccessOption: null == projectFailureSuccessOption
          ? _value.projectFailureSuccessOption
          : projectFailureSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFirestoreFailure, Unit>>,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TaskFormState implements _TaskFormState {
  _$_TaskFormState(
      {required this.task,
      this.showErrorMessages,
      required this.isProcessing,
      required this.projectFailureSuccessOption,
      required this.isEditing});

  @override
  final Task task;
  @override
  final AutovalidateMode? showErrorMessages;
  @override
  final bool isProcessing;
  @override
  final Option<Either<FirebaseFirestoreFailure, Unit>>
      projectFailureSuccessOption;
  @override
  final bool isEditing;

  @override
  String toString() {
    return 'TaskFormState(task: $task, showErrorMessages: $showErrorMessages, isProcessing: $isProcessing, projectFailureSuccessOption: $projectFailureSuccessOption, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskFormState &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.projectFailureSuccessOption,
                    projectFailureSuccessOption) ||
                other.projectFailureSuccessOption ==
                    projectFailureSuccessOption) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, showErrorMessages,
      isProcessing, projectFailureSuccessOption, isEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskFormStateCopyWith<_$_TaskFormState> get copyWith =>
      __$$_TaskFormStateCopyWithImpl<_$_TaskFormState>(this, _$identity);
}

abstract class _TaskFormState implements TaskFormState {
  factory _TaskFormState(
      {required final Task task,
      final AutovalidateMode? showErrorMessages,
      required final bool isProcessing,
      required final Option<Either<FirebaseFirestoreFailure, Unit>>
          projectFailureSuccessOption,
      required final bool isEditing}) = _$_TaskFormState;

  @override
  Task get task;
  @override
  AutovalidateMode? get showErrorMessages;
  @override
  bool get isProcessing;
  @override
  Option<Either<FirebaseFirestoreFailure, Unit>>
      get projectFailureSuccessOption;
  @override
  bool get isEditing;
  @override
  @JsonKey(ignore: true)
  _$$_TaskFormStateCopyWith<_$_TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
