// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(ShortLength<T> value)? shortLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiLine,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthCopyWith(_$ExceedingLength<T> value,
          $Res Function(_$ExceedingLength<T>) then) =
      __$$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedingLength<T>>
    implements _$$ExceedingLengthCopyWith<T, $Res> {
  __$$ExceedingLengthCopyWithImpl(
      _$ExceedingLength<T> _value, $Res Function(_$ExceedingLength<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ExceedingLength<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      __$$ExceedingLengthCopyWithImpl<T, _$ExceedingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortPassword,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(ShortLength<T> value)? shortLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiLine,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  factory ExceedingLength(
      {required final T failedValue,
      required final int max}) = _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortLengthCopyWith(
          _$ShortLength<T> value, $Res Function(_$ShortLength<T>) then) =
      __$$ShortLengthCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int min});
}

/// @nodoc
class __$$ShortLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortLength<T>>
    implements _$$ShortLengthCopyWith<T, $Res> {
  __$$ShortLengthCopyWithImpl(
      _$ShortLength<T> _value, $Res Function(_$ShortLength<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = null,
  }) {
    return _then(_$ShortLength<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShortLength<T> implements ShortLength<T> {
  _$ShortLength({required this.failedValue, required this.min});

  @override
  final T failedValue;
  @override
  final int min;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortLength(failedValue: $failedValue, min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.min, min) || other.min == min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), min);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortLengthCopyWith<T, _$ShortLength<T>> get copyWith =>
      __$$ShortLengthCopyWithImpl<T, _$ShortLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return shortLength(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortPassword,
  }) {
    return shortLength?.call(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortLength != null) {
      return shortLength(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return shortLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(ShortLength<T> value)? shortLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiLine,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return shortLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortLength != null) {
      return shortLength(this);
    }
    return orElse();
  }
}

abstract class ShortLength<T> implements ValueFailure<T> {
  factory ShortLength({required final T failedValue, required final int min}) =
      _$ShortLength<T>;

  @override
  T get failedValue;
  int get min;
  @override
  @JsonKey(ignore: true)
  _$$ShortLengthCopyWith<T, _$ShortLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Empty<T>>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      __$$EmptyCopyWithImpl<T, _$Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortPassword,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(ShortLength<T> value)? shortLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiLine,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  factory Empty({required final T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MultilineCopyWith(
          _$Multiline<T> value, $Res Function(_$Multiline<T>) then) =
      __$$MultilineCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Multiline<T>>
    implements _$$MultilineCopyWith<T, $Res> {
  __$$MultilineCopyWithImpl(
      _$Multiline<T> _value, $Res Function(_$Multiline<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Multiline<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Multiline<T> implements Multiline<T> {
  _$Multiline({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Multiline<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultilineCopyWith<T, _$Multiline<T>> get copyWith =>
      __$$MultilineCopyWithImpl<T, _$Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return multiLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortPassword,
  }) {
    return multiLine?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return multiLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(ShortLength<T> value)? shortLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiLine,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return multiLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  factory Multiline({required final T failedValue}) = _$Multiline<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$MultilineCopyWith<T, _$Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ListTooLongCopyWith(
          _$ListTooLong<T> value, $Res Function(_$ListTooLong<T>) then) =
      __$$ListTooLongCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ListTooLong<T>>
    implements _$$ListTooLongCopyWith<T, $Res> {
  __$$ListTooLongCopyWithImpl(
      _$ListTooLong<T> _value, $Res Function(_$ListTooLong<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ListTooLong<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListTooLong<T> implements ListTooLong<T> {
  _$ListTooLong({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTooLong<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTooLongCopyWith<T, _$ListTooLong<T>> get copyWith =>
      __$$ListTooLongCopyWithImpl<T, _$ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortPassword,
  }) {
    return listTooLong?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(ShortLength<T> value)? shortLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiLine,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  factory ListTooLong({required final T failedValue, required final int max}) =
      _$ListTooLong<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$ListTooLongCopyWith<T, _$ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmail<T>>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortPassword,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(ShortLength<T> value)? shortLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiLine,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  factory InvalidEmail({required final T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordsDoNotMatchCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PasswordsDoNotMatchCopyWith(_$PasswordsDoNotMatch<T> value,
          $Res Function(_$PasswordsDoNotMatch<T>) then) =
      __$$PasswordsDoNotMatchCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$PasswordsDoNotMatchCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$PasswordsDoNotMatch<T>>
    implements _$$PasswordsDoNotMatchCopyWith<T, $Res> {
  __$$PasswordsDoNotMatchCopyWithImpl(_$PasswordsDoNotMatch<T> _value,
      $Res Function(_$PasswordsDoNotMatch<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PasswordsDoNotMatch<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PasswordsDoNotMatch<T> implements PasswordsDoNotMatch<T> {
  _$PasswordsDoNotMatch({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordsDoNotMatch(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordsDoNotMatch<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordsDoNotMatchCopyWith<T, _$PasswordsDoNotMatch<T>> get copyWith =>
      __$$PasswordsDoNotMatchCopyWithImpl<T, _$PasswordsDoNotMatch<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return passwordsDoNotMatch(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortPassword,
  }) {
    return passwordsDoNotMatch?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (passwordsDoNotMatch != null) {
      return passwordsDoNotMatch(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return passwordsDoNotMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(ShortLength<T> value)? shortLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiLine,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return passwordsDoNotMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (passwordsDoNotMatch != null) {
      return passwordsDoNotMatch(this);
    }
    return orElse();
  }
}

abstract class PasswordsDoNotMatch<T> implements ValueFailure<T> {
  factory PasswordsDoNotMatch({required final T failedValue}) =
      _$PasswordsDoNotMatch<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$PasswordsDoNotMatchCopyWith<T, _$PasswordsDoNotMatch<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordCopyWith(
          _$ShortPassword<T> value, $Res Function(_$ShortPassword<T>) then) =
      __$$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPassword<T>>
    implements _$$ShortPasswordCopyWith<T, $Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword<T> _value, $Res Function(_$ShortPassword<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPassword<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      __$$ShortPasswordCopyWithImpl<T, _$ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortPassword,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(ShortLength<T> value)? shortLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiLine,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  factory ShortPassword({required final T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
