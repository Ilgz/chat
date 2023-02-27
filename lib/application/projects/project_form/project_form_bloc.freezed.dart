// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectBodyStr) projectBodyChanged,
    required TResult Function(bool editingState) changeEditingState,
    required TResult Function() saveProject,
    required TResult Function(Option<Project> initialProjectOption) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectBodyStr)? projectBodyChanged,
    TResult? Function(bool editingState)? changeEditingState,
    TResult? Function()? saveProject,
    TResult? Function(Option<Project> initialProjectOption)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectBodyStr)? projectBodyChanged,
    TResult Function(bool editingState)? changeEditingState,
    TResult Function()? saveProject,
    TResult Function(Option<Project> initialProjectOption)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectBodyChanged value) projectBodyChanged,
    required TResult Function(ChangeEditingState value) changeEditingState,
    required TResult Function(SaveProject value) saveProject,
    required TResult Function(Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectBodyChanged value)? projectBodyChanged,
    TResult? Function(ChangeEditingState value)? changeEditingState,
    TResult? Function(SaveProject value)? saveProject,
    TResult? Function(Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectBodyChanged value)? projectBodyChanged,
    TResult Function(ChangeEditingState value)? changeEditingState,
    TResult Function(SaveProject value)? saveProject,
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFormEventCopyWith<$Res> {
  factory $ProjectFormEventCopyWith(
          ProjectFormEvent value, $Res Function(ProjectFormEvent) then) =
      _$ProjectFormEventCopyWithImpl<$Res, ProjectFormEvent>;
}

/// @nodoc
class _$ProjectFormEventCopyWithImpl<$Res, $Val extends ProjectFormEvent>
    implements $ProjectFormEventCopyWith<$Res> {
  _$ProjectFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectBodyChangedCopyWith<$Res> {
  factory _$$ProjectBodyChangedCopyWith(_$ProjectBodyChanged value,
          $Res Function(_$ProjectBodyChanged) then) =
      __$$ProjectBodyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String projectBodyStr});
}

/// @nodoc
class __$$ProjectBodyChangedCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res, _$ProjectBodyChanged>
    implements _$$ProjectBodyChangedCopyWith<$Res> {
  __$$ProjectBodyChangedCopyWithImpl(
      _$ProjectBodyChanged _value, $Res Function(_$ProjectBodyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectBodyStr = null,
  }) {
    return _then(_$ProjectBodyChanged(
      null == projectBodyStr
          ? _value.projectBodyStr
          : projectBodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectBodyChanged implements ProjectBodyChanged {
  _$ProjectBodyChanged(this.projectBodyStr);

  @override
  final String projectBodyStr;

  @override
  String toString() {
    return 'ProjectFormEvent.projectBodyChanged(projectBodyStr: $projectBodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectBodyChanged &&
            (identical(other.projectBodyStr, projectBodyStr) ||
                other.projectBodyStr == projectBodyStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectBodyStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectBodyChangedCopyWith<_$ProjectBodyChanged> get copyWith =>
      __$$ProjectBodyChangedCopyWithImpl<_$ProjectBodyChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectBodyStr) projectBodyChanged,
    required TResult Function(bool editingState) changeEditingState,
    required TResult Function() saveProject,
    required TResult Function(Option<Project> initialProjectOption) initialized,
  }) {
    return projectBodyChanged(projectBodyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectBodyStr)? projectBodyChanged,
    TResult? Function(bool editingState)? changeEditingState,
    TResult? Function()? saveProject,
    TResult? Function(Option<Project> initialProjectOption)? initialized,
  }) {
    return projectBodyChanged?.call(projectBodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectBodyStr)? projectBodyChanged,
    TResult Function(bool editingState)? changeEditingState,
    TResult Function()? saveProject,
    TResult Function(Option<Project> initialProjectOption)? initialized,
    required TResult orElse(),
  }) {
    if (projectBodyChanged != null) {
      return projectBodyChanged(projectBodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectBodyChanged value) projectBodyChanged,
    required TResult Function(ChangeEditingState value) changeEditingState,
    required TResult Function(SaveProject value) saveProject,
    required TResult Function(Initialized value) initialized,
  }) {
    return projectBodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectBodyChanged value)? projectBodyChanged,
    TResult? Function(ChangeEditingState value)? changeEditingState,
    TResult? Function(SaveProject value)? saveProject,
    TResult? Function(Initialized value)? initialized,
  }) {
    return projectBodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectBodyChanged value)? projectBodyChanged,
    TResult Function(ChangeEditingState value)? changeEditingState,
    TResult Function(SaveProject value)? saveProject,
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (projectBodyChanged != null) {
      return projectBodyChanged(this);
    }
    return orElse();
  }
}

abstract class ProjectBodyChanged implements ProjectFormEvent {
  factory ProjectBodyChanged(final String projectBodyStr) =
      _$ProjectBodyChanged;

  String get projectBodyStr;
  @JsonKey(ignore: true)
  _$$ProjectBodyChangedCopyWith<_$ProjectBodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeEditingStateCopyWith<$Res> {
  factory _$$ChangeEditingStateCopyWith(_$ChangeEditingState value,
          $Res Function(_$ChangeEditingState) then) =
      __$$ChangeEditingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool editingState});
}

/// @nodoc
class __$$ChangeEditingStateCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res, _$ChangeEditingState>
    implements _$$ChangeEditingStateCopyWith<$Res> {
  __$$ChangeEditingStateCopyWithImpl(
      _$ChangeEditingState _value, $Res Function(_$ChangeEditingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editingState = null,
  }) {
    return _then(_$ChangeEditingState(
      null == editingState
          ? _value.editingState
          : editingState // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeEditingState implements ChangeEditingState {
  _$ChangeEditingState(this.editingState);

  @override
  final bool editingState;

  @override
  String toString() {
    return 'ProjectFormEvent.changeEditingState(editingState: $editingState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEditingState &&
            (identical(other.editingState, editingState) ||
                other.editingState == editingState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editingState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEditingStateCopyWith<_$ChangeEditingState> get copyWith =>
      __$$ChangeEditingStateCopyWithImpl<_$ChangeEditingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectBodyStr) projectBodyChanged,
    required TResult Function(bool editingState) changeEditingState,
    required TResult Function() saveProject,
    required TResult Function(Option<Project> initialProjectOption) initialized,
  }) {
    return changeEditingState(editingState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectBodyStr)? projectBodyChanged,
    TResult? Function(bool editingState)? changeEditingState,
    TResult? Function()? saveProject,
    TResult? Function(Option<Project> initialProjectOption)? initialized,
  }) {
    return changeEditingState?.call(editingState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectBodyStr)? projectBodyChanged,
    TResult Function(bool editingState)? changeEditingState,
    TResult Function()? saveProject,
    TResult Function(Option<Project> initialProjectOption)? initialized,
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
    required TResult Function(ProjectBodyChanged value) projectBodyChanged,
    required TResult Function(ChangeEditingState value) changeEditingState,
    required TResult Function(SaveProject value) saveProject,
    required TResult Function(Initialized value) initialized,
  }) {
    return changeEditingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectBodyChanged value)? projectBodyChanged,
    TResult? Function(ChangeEditingState value)? changeEditingState,
    TResult? Function(SaveProject value)? saveProject,
    TResult? Function(Initialized value)? initialized,
  }) {
    return changeEditingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectBodyChanged value)? projectBodyChanged,
    TResult Function(ChangeEditingState value)? changeEditingState,
    TResult Function(SaveProject value)? saveProject,
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (changeEditingState != null) {
      return changeEditingState(this);
    }
    return orElse();
  }
}

abstract class ChangeEditingState implements ProjectFormEvent {
  factory ChangeEditingState(final bool editingState) = _$ChangeEditingState;

  bool get editingState;
  @JsonKey(ignore: true)
  _$$ChangeEditingStateCopyWith<_$ChangeEditingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveProjectCopyWith<$Res> {
  factory _$$SaveProjectCopyWith(
          _$SaveProject value, $Res Function(_$SaveProject) then) =
      __$$SaveProjectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveProjectCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res, _$SaveProject>
    implements _$$SaveProjectCopyWith<$Res> {
  __$$SaveProjectCopyWithImpl(
      _$SaveProject _value, $Res Function(_$SaveProject) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveProject implements SaveProject {
  _$SaveProject();

  @override
  String toString() {
    return 'ProjectFormEvent.saveProject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveProject);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectBodyStr) projectBodyChanged,
    required TResult Function(bool editingState) changeEditingState,
    required TResult Function() saveProject,
    required TResult Function(Option<Project> initialProjectOption) initialized,
  }) {
    return saveProject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectBodyStr)? projectBodyChanged,
    TResult? Function(bool editingState)? changeEditingState,
    TResult? Function()? saveProject,
    TResult? Function(Option<Project> initialProjectOption)? initialized,
  }) {
    return saveProject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectBodyStr)? projectBodyChanged,
    TResult Function(bool editingState)? changeEditingState,
    TResult Function()? saveProject,
    TResult Function(Option<Project> initialProjectOption)? initialized,
    required TResult orElse(),
  }) {
    if (saveProject != null) {
      return saveProject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectBodyChanged value) projectBodyChanged,
    required TResult Function(ChangeEditingState value) changeEditingState,
    required TResult Function(SaveProject value) saveProject,
    required TResult Function(Initialized value) initialized,
  }) {
    return saveProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectBodyChanged value)? projectBodyChanged,
    TResult? Function(ChangeEditingState value)? changeEditingState,
    TResult? Function(SaveProject value)? saveProject,
    TResult? Function(Initialized value)? initialized,
  }) {
    return saveProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectBodyChanged value)? projectBodyChanged,
    TResult Function(ChangeEditingState value)? changeEditingState,
    TResult Function(SaveProject value)? saveProject,
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (saveProject != null) {
      return saveProject(this);
    }
    return orElse();
  }
}

abstract class SaveProject implements ProjectFormEvent {
  factory SaveProject() = _$SaveProject;
}

/// @nodoc
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Project> initialProjectOption});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res, _$Initialized>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialProjectOption = null,
  }) {
    return _then(_$Initialized(
      null == initialProjectOption
          ? _value.initialProjectOption
          : initialProjectOption // ignore: cast_nullable_to_non_nullable
              as Option<Project>,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialProjectOption);

  @override
  final Option<Project> initialProjectOption;

  @override
  String toString() {
    return 'ProjectFormEvent.initialized(initialProjectOption: $initialProjectOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialized &&
            (identical(other.initialProjectOption, initialProjectOption) ||
                other.initialProjectOption == initialProjectOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialProjectOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectBodyStr) projectBodyChanged,
    required TResult Function(bool editingState) changeEditingState,
    required TResult Function() saveProject,
    required TResult Function(Option<Project> initialProjectOption) initialized,
  }) {
    return initialized(initialProjectOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectBodyStr)? projectBodyChanged,
    TResult? Function(bool editingState)? changeEditingState,
    TResult? Function()? saveProject,
    TResult? Function(Option<Project> initialProjectOption)? initialized,
  }) {
    return initialized?.call(initialProjectOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectBodyStr)? projectBodyChanged,
    TResult Function(bool editingState)? changeEditingState,
    TResult Function()? saveProject,
    TResult Function(Option<Project> initialProjectOption)? initialized,
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
    required TResult Function(ProjectBodyChanged value) projectBodyChanged,
    required TResult Function(ChangeEditingState value) changeEditingState,
    required TResult Function(SaveProject value) saveProject,
    required TResult Function(Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectBodyChanged value)? projectBodyChanged,
    TResult? Function(ChangeEditingState value)? changeEditingState,
    TResult? Function(SaveProject value)? saveProject,
    TResult? Function(Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectBodyChanged value)? projectBodyChanged,
    TResult Function(ChangeEditingState value)? changeEditingState,
    TResult Function(SaveProject value)? saveProject,
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements ProjectFormEvent {
  const factory Initialized(final Option<Project> initialProjectOption) =
      _$Initialized;

  Option<Project> get initialProjectOption;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectFormState {
  Project get project => throw _privateConstructorUsedError;
  AutovalidateMode? get showErrorMessages => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  Option<Either<FirebaseFirestoreFailure, Unit>>
      get projectFailureSuccessOption => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectFormStateCopyWith<ProjectFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFormStateCopyWith<$Res> {
  factory $ProjectFormStateCopyWith(
          ProjectFormState value, $Res Function(ProjectFormState) then) =
      _$ProjectFormStateCopyWithImpl<$Res, ProjectFormState>;
  @useResult
  $Res call(
      {Project project,
      AutovalidateMode? showErrorMessages,
      bool isProcessing,
      Option<Either<FirebaseFirestoreFailure, Unit>>
          projectFailureSuccessOption,
      bool isEditing});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class _$ProjectFormStateCopyWithImpl<$Res, $Val extends ProjectFormState>
    implements $ProjectFormStateCopyWith<$Res> {
  _$ProjectFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? showErrorMessages = freezed,
    Object? isProcessing = null,
    Object? projectFailureSuccessOption = null,
    Object? isEditing = null,
  }) {
    return _then(_value.copyWith(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
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
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProjectInFormStateCopyWith<$Res>
    implements $ProjectFormStateCopyWith<$Res> {
  factory _$$_ProjectInFormStateCopyWith(_$_ProjectInFormState value,
          $Res Function(_$_ProjectInFormState) then) =
      __$$_ProjectInFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Project project,
      AutovalidateMode? showErrorMessages,
      bool isProcessing,
      Option<Either<FirebaseFirestoreFailure, Unit>>
          projectFailureSuccessOption,
      bool isEditing});

  @override
  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$_ProjectInFormStateCopyWithImpl<$Res>
    extends _$ProjectFormStateCopyWithImpl<$Res, _$_ProjectInFormState>
    implements _$$_ProjectInFormStateCopyWith<$Res> {
  __$$_ProjectInFormStateCopyWithImpl(
      _$_ProjectInFormState _value, $Res Function(_$_ProjectInFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? showErrorMessages = freezed,
    Object? isProcessing = null,
    Object? projectFailureSuccessOption = null,
    Object? isEditing = null,
  }) {
    return _then(_$_ProjectInFormState(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
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

class _$_ProjectInFormState implements _ProjectInFormState {
  _$_ProjectInFormState(
      {required this.project,
      this.showErrorMessages,
      required this.isProcessing,
      required this.projectFailureSuccessOption,
      required this.isEditing});

  @override
  final Project project;
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
    return 'ProjectFormState(project: $project, showErrorMessages: $showErrorMessages, isProcessing: $isProcessing, projectFailureSuccessOption: $projectFailureSuccessOption, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectInFormState &&
            (identical(other.project, project) || other.project == project) &&
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
  int get hashCode => Object.hash(runtimeType, project, showErrorMessages,
      isProcessing, projectFailureSuccessOption, isEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectInFormStateCopyWith<_$_ProjectInFormState> get copyWith =>
      __$$_ProjectInFormStateCopyWithImpl<_$_ProjectInFormState>(
          this, _$identity);
}

abstract class _ProjectInFormState implements ProjectFormState {
  factory _ProjectInFormState(
      {required final Project project,
      final AutovalidateMode? showErrorMessages,
      required final bool isProcessing,
      required final Option<Either<FirebaseFirestoreFailure, Unit>>
          projectFailureSuccessOption,
      required final bool isEditing}) = _$_ProjectInFormState;

  @override
  Project get project;
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
  _$$_ProjectInFormStateCopyWith<_$_ProjectInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
