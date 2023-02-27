// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectFilterEvent {
  ProjectFilterType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectFilterType type) changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectFilterType type)? changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectFilterType type)? changeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeFilter value) changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeFilter value)? changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectFilterEventCopyWith<ProjectFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFilterEventCopyWith<$Res> {
  factory $ProjectFilterEventCopyWith(
          ProjectFilterEvent value, $Res Function(ProjectFilterEvent) then) =
      _$ProjectFilterEventCopyWithImpl<$Res, ProjectFilterEvent>;
  @useResult
  $Res call({ProjectFilterType type});
}

/// @nodoc
class _$ProjectFilterEventCopyWithImpl<$Res, $Val extends ProjectFilterEvent>
    implements $ProjectFilterEventCopyWith<$Res> {
  _$ProjectFilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectFilterType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeFilterCopyWith<$Res>
    implements $ProjectFilterEventCopyWith<$Res> {
  factory _$$ChangeFilterCopyWith(
          _$ChangeFilter value, $Res Function(_$ChangeFilter) then) =
      __$$ChangeFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectFilterType type});
}

/// @nodoc
class __$$ChangeFilterCopyWithImpl<$Res>
    extends _$ProjectFilterEventCopyWithImpl<$Res, _$ChangeFilter>
    implements _$$ChangeFilterCopyWith<$Res> {
  __$$ChangeFilterCopyWithImpl(
      _$ChangeFilter _value, $Res Function(_$ChangeFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ChangeFilter(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectFilterType,
    ));
  }
}

/// @nodoc

class _$ChangeFilter implements ChangeFilter {
  const _$ChangeFilter(this.type);

  @override
  final ProjectFilterType type;

  @override
  String toString() {
    return 'ProjectFilterEvent.changeFilter(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFilter &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFilterCopyWith<_$ChangeFilter> get copyWith =>
      __$$ChangeFilterCopyWithImpl<_$ChangeFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectFilterType type) changeFilter,
  }) {
    return changeFilter(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectFilterType type)? changeFilter,
  }) {
    return changeFilter?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectFilterType type)? changeFilter,
    required TResult orElse(),
  }) {
    if (changeFilter != null) {
      return changeFilter(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeFilter value) changeFilter,
  }) {
    return changeFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeFilter value)? changeFilter,
  }) {
    return changeFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) {
    if (changeFilter != null) {
      return changeFilter(this);
    }
    return orElse();
  }
}

abstract class ChangeFilter implements ProjectFilterEvent {
  const factory ChangeFilter(final ProjectFilterType type) = _$ChangeFilter;

  @override
  ProjectFilterType get type;
  @override
  @JsonKey(ignore: true)
  _$$ChangeFilterCopyWith<_$ChangeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectFilterState {
  ProjectFilterType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectFilterStateCopyWith<ProjectFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFilterStateCopyWith<$Res> {
  factory $ProjectFilterStateCopyWith(
          ProjectFilterState value, $Res Function(ProjectFilterState) then) =
      _$ProjectFilterStateCopyWithImpl<$Res, ProjectFilterState>;
  @useResult
  $Res call({ProjectFilterType type});
}

/// @nodoc
class _$ProjectFilterStateCopyWithImpl<$Res, $Val extends ProjectFilterState>
    implements $ProjectFilterStateCopyWith<$Res> {
  _$ProjectFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectFilterType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectFilterStateCopyWith<$Res>
    implements $ProjectFilterStateCopyWith<$Res> {
  factory _$$_ProjectFilterStateCopyWith(_$_ProjectFilterState value,
          $Res Function(_$_ProjectFilterState) then) =
      __$$_ProjectFilterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectFilterType type});
}

/// @nodoc
class __$$_ProjectFilterStateCopyWithImpl<$Res>
    extends _$ProjectFilterStateCopyWithImpl<$Res, _$_ProjectFilterState>
    implements _$$_ProjectFilterStateCopyWith<$Res> {
  __$$_ProjectFilterStateCopyWithImpl(
      _$_ProjectFilterState _value, $Res Function(_$_ProjectFilterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_ProjectFilterState(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectFilterType,
    ));
  }
}

/// @nodoc

class _$_ProjectFilterState implements _ProjectFilterState {
  _$_ProjectFilterState(this.type);

  @override
  final ProjectFilterType type;

  @override
  String toString() {
    return 'ProjectFilterState(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectFilterState &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectFilterStateCopyWith<_$_ProjectFilterState> get copyWith =>
      __$$_ProjectFilterStateCopyWithImpl<_$_ProjectFilterState>(
          this, _$identity);
}

abstract class _ProjectFilterState implements ProjectFilterState {
  factory _ProjectFilterState(final ProjectFilterType type) =
      _$_ProjectFilterState;

  @override
  ProjectFilterType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectFilterStateCopyWith<_$_ProjectFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
