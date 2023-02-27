// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_switcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeSwitcherState {
  bool get isDark => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeSwitcherStateCopyWith<ThemeSwitcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeSwitcherStateCopyWith<$Res> {
  factory $ThemeSwitcherStateCopyWith(
          ThemeSwitcherState value, $Res Function(ThemeSwitcherState) then) =
      _$ThemeSwitcherStateCopyWithImpl<$Res, ThemeSwitcherState>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class _$ThemeSwitcherStateCopyWithImpl<$Res, $Val extends ThemeSwitcherState>
    implements $ThemeSwitcherStateCopyWith<$Res> {
  _$ThemeSwitcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_value.copyWith(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThemeSwitcherStateCopyWith<$Res>
    implements $ThemeSwitcherStateCopyWith<$Res> {
  factory _$$_ThemeSwitcherStateCopyWith(_$_ThemeSwitcherState value,
          $Res Function(_$_ThemeSwitcherState) then) =
      __$$_ThemeSwitcherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$_ThemeSwitcherStateCopyWithImpl<$Res>
    extends _$ThemeSwitcherStateCopyWithImpl<$Res, _$_ThemeSwitcherState>
    implements _$$_ThemeSwitcherStateCopyWith<$Res> {
  __$$_ThemeSwitcherStateCopyWithImpl(
      _$_ThemeSwitcherState _value, $Res Function(_$_ThemeSwitcherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$_ThemeSwitcherState(
      null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ThemeSwitcherState implements _ThemeSwitcherState {
  _$_ThemeSwitcherState(this.isDark);

  @override
  final bool isDark;

  @override
  String toString() {
    return 'ThemeSwitcherState(isDark: $isDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeSwitcherState &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeSwitcherStateCopyWith<_$_ThemeSwitcherState> get copyWith =>
      __$$_ThemeSwitcherStateCopyWithImpl<_$_ThemeSwitcherState>(
          this, _$identity);
}

abstract class _ThemeSwitcherState implements ThemeSwitcherState {
  factory _ThemeSwitcherState(final bool isDark) = _$_ThemeSwitcherState;

  @override
  bool get isDark;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeSwitcherStateCopyWith<_$_ThemeSwitcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
