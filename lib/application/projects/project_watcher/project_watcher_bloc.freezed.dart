// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startWatchAll,
    required TResult Function(
            Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects)
        receiveProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startWatchAll,
    TResult? Function(
            Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects)?
        receiveProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startWatchAll,
    TResult Function(
            Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects)?
        receiveProjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartWatchAll value) startWatchAll,
    required TResult Function(_ReceiveNotes value) receiveProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartWatchAll value)? startWatchAll,
    TResult? Function(_ReceiveNotes value)? receiveProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartWatchAll value)? startWatchAll,
    TResult Function(_ReceiveNotes value)? receiveProjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectWatcherEventCopyWith<$Res> {
  factory $ProjectWatcherEventCopyWith(
          ProjectWatcherEvent value, $Res Function(ProjectWatcherEvent) then) =
      _$ProjectWatcherEventCopyWithImpl<$Res, ProjectWatcherEvent>;
}

/// @nodoc
class _$ProjectWatcherEventCopyWithImpl<$Res, $Val extends ProjectWatcherEvent>
    implements $ProjectWatcherEventCopyWith<$Res> {
  _$ProjectWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartWatchAllCopyWith<$Res> {
  factory _$$_StartWatchAllCopyWith(
          _$_StartWatchAll value, $Res Function(_$_StartWatchAll) then) =
      __$$_StartWatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartWatchAllCopyWithImpl<$Res>
    extends _$ProjectWatcherEventCopyWithImpl<$Res, _$_StartWatchAll>
    implements _$$_StartWatchAllCopyWith<$Res> {
  __$$_StartWatchAllCopyWithImpl(
      _$_StartWatchAll _value, $Res Function(_$_StartWatchAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartWatchAll implements _StartWatchAll {
  const _$_StartWatchAll();

  @override
  String toString() {
    return 'ProjectWatcherEvent.startWatchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartWatchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startWatchAll,
    required TResult Function(
            Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects)
        receiveProjects,
  }) {
    return startWatchAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startWatchAll,
    TResult? Function(
            Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects)?
        receiveProjects,
  }) {
    return startWatchAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startWatchAll,
    TResult Function(
            Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects)?
        receiveProjects,
    required TResult orElse(),
  }) {
    if (startWatchAll != null) {
      return startWatchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartWatchAll value) startWatchAll,
    required TResult Function(_ReceiveNotes value) receiveProjects,
  }) {
    return startWatchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartWatchAll value)? startWatchAll,
    TResult? Function(_ReceiveNotes value)? receiveProjects,
  }) {
    return startWatchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartWatchAll value)? startWatchAll,
    TResult Function(_ReceiveNotes value)? receiveProjects,
    required TResult orElse(),
  }) {
    if (startWatchAll != null) {
      return startWatchAll(this);
    }
    return orElse();
  }
}

abstract class _StartWatchAll implements ProjectWatcherEvent {
  const factory _StartWatchAll() = _$_StartWatchAll;
}

/// @nodoc
abstract class _$$_ReceiveNotesCopyWith<$Res> {
  factory _$$_ReceiveNotesCopyWith(
          _$_ReceiveNotes value, $Res Function(_$_ReceiveNotes) then) =
      __$$_ReceiveNotesCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects});
}

/// @nodoc
class __$$_ReceiveNotesCopyWithImpl<$Res>
    extends _$ProjectWatcherEventCopyWithImpl<$Res, _$_ReceiveNotes>
    implements _$$_ReceiveNotesCopyWith<$Res> {
  __$$_ReceiveNotesCopyWithImpl(
      _$_ReceiveNotes _value, $Res Function(_$_ReceiveNotes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrProjects = null,
  }) {
    return _then(_$_ReceiveNotes(
      null == failureOrProjects
          ? _value.failureOrProjects
          : failureOrProjects // ignore: cast_nullable_to_non_nullable
              as Either<FirebaseFirestoreFailure, List<Project>>,
    ));
  }
}

/// @nodoc

class _$_ReceiveNotes implements _ReceiveNotes {
  const _$_ReceiveNotes(this.failureOrProjects);

  @override
  final Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects;

  @override
  String toString() {
    return 'ProjectWatcherEvent.receiveProjects(failureOrProjects: $failureOrProjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiveNotes &&
            (identical(other.failureOrProjects, failureOrProjects) ||
                other.failureOrProjects == failureOrProjects));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrProjects);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiveNotesCopyWith<_$_ReceiveNotes> get copyWith =>
      __$$_ReceiveNotesCopyWithImpl<_$_ReceiveNotes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startWatchAll,
    required TResult Function(
            Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects)
        receiveProjects,
  }) {
    return receiveProjects(failureOrProjects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startWatchAll,
    TResult? Function(
            Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects)?
        receiveProjects,
  }) {
    return receiveProjects?.call(failureOrProjects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startWatchAll,
    TResult Function(
            Either<FirebaseFirestoreFailure, List<Project>> failureOrProjects)?
        receiveProjects,
    required TResult orElse(),
  }) {
    if (receiveProjects != null) {
      return receiveProjects(failureOrProjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartWatchAll value) startWatchAll,
    required TResult Function(_ReceiveNotes value) receiveProjects,
  }) {
    return receiveProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartWatchAll value)? startWatchAll,
    TResult? Function(_ReceiveNotes value)? receiveProjects,
  }) {
    return receiveProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartWatchAll value)? startWatchAll,
    TResult Function(_ReceiveNotes value)? receiveProjects,
    required TResult orElse(),
  }) {
    if (receiveProjects != null) {
      return receiveProjects(this);
    }
    return orElse();
  }
}

abstract class _ReceiveNotes implements ProjectWatcherEvent {
  const factory _ReceiveNotes(
      final Either<FirebaseFirestoreFailure, List<Project>>
          failureOrProjects) = _$_ReceiveNotes;

  Either<FirebaseFirestoreFailure, List<Project>> get failureOrProjects;
  @JsonKey(ignore: true)
  _$$_ReceiveNotesCopyWith<_$_ReceiveNotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Project> projects) loadSuccess,
    required TResult Function(FirebaseFirestoreFailure projectFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Project> projects)? loadSuccess,
    TResult? Function(FirebaseFirestoreFailure projectFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Project> projects)? loadSuccess,
    TResult Function(FirebaseFirestoreFailure projectFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectWatcherStateCopyWith<$Res> {
  factory $ProjectWatcherStateCopyWith(
          ProjectWatcherState value, $Res Function(ProjectWatcherState) then) =
      _$ProjectWatcherStateCopyWithImpl<$Res, ProjectWatcherState>;
}

/// @nodoc
class _$ProjectWatcherStateCopyWithImpl<$Res, $Val extends ProjectWatcherState>
    implements $ProjectWatcherStateCopyWith<$Res> {
  _$ProjectWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$ProjectWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'ProjectWatcherState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(List<Project> projects) loadSuccess,
    required TResult Function(FirebaseFirestoreFailure projectFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Project> projects)? loadSuccess,
    TResult? Function(FirebaseFirestoreFailure projectFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Project> projects)? loadSuccess,
    TResult Function(FirebaseFirestoreFailure projectFailure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProjectWatcherState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$ProjectWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  _$_LoadInProgress();

  @override
  String toString() {
    return 'ProjectWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Project> projects) loadSuccess,
    required TResult Function(FirebaseFirestoreFailure projectFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Project> projects)? loadSuccess,
    TResult? Function(FirebaseFirestoreFailure projectFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Project> projects)? loadSuccess,
    TResult Function(FirebaseFirestoreFailure projectFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ProjectWatcherState {
  factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Project> projects});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ProjectWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_$_LoadSuccess(
      null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  _$_LoadSuccess(final List<Project> projects) : _projects = projects;

  final List<Project> _projects;
  @override
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'ProjectWatcherState.loadSuccess(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Project> projects) loadSuccess,
    required TResult Function(FirebaseFirestoreFailure projectFailure)
        loadFailure,
  }) {
    return loadSuccess(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Project> projects)? loadSuccess,
    TResult? Function(FirebaseFirestoreFailure projectFailure)? loadFailure,
  }) {
    return loadSuccess?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Project> projects)? loadSuccess,
    TResult Function(FirebaseFirestoreFailure projectFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ProjectWatcherState {
  factory _LoadSuccess(final List<Project> projects) = _$_LoadSuccess;

  List<Project> get projects;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({FirebaseFirestoreFailure projectFailure});

  $FirebaseFirestoreFailureCopyWith<$Res> get projectFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ProjectWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == projectFailure
          ? _value.projectFailure
          : projectFailure // ignore: cast_nullable_to_non_nullable
              as FirebaseFirestoreFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FirebaseFirestoreFailureCopyWith<$Res> get projectFailure {
    return $FirebaseFirestoreFailureCopyWith<$Res>(_value.projectFailure,
        (value) {
      return _then(_value.copyWith(projectFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  _$_LoadFailure(this.projectFailure);

  @override
  final FirebaseFirestoreFailure projectFailure;

  @override
  String toString() {
    return 'ProjectWatcherState.loadFailure(projectFailure: $projectFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.projectFailure, projectFailure) ||
                other.projectFailure == projectFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Project> projects) loadSuccess,
    required TResult Function(FirebaseFirestoreFailure projectFailure)
        loadFailure,
  }) {
    return loadFailure(projectFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Project> projects)? loadSuccess,
    TResult? Function(FirebaseFirestoreFailure projectFailure)? loadFailure,
  }) {
    return loadFailure?.call(projectFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Project> projects)? loadSuccess,
    TResult Function(FirebaseFirestoreFailure projectFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(projectFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ProjectWatcherState {
  factory _LoadFailure(final FirebaseFirestoreFailure projectFailure) =
      _$_LoadFailure;

  FirebaseFirestoreFailure get projectFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
