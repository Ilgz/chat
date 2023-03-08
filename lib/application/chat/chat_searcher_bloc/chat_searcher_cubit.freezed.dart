// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_searcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatSearcherState {
  List<Chat> get initialChats => throw _privateConstructorUsedError;
  List<Chat> get queriedChats => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatSearcherStateCopyWith<ChatSearcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSearcherStateCopyWith<$Res> {
  factory $ChatSearcherStateCopyWith(
          ChatSearcherState value, $Res Function(ChatSearcherState) then) =
      _$ChatSearcherStateCopyWithImpl<$Res, ChatSearcherState>;
  @useResult
  $Res call({List<Chat> initialChats, List<Chat> queriedChats, String query});
}

/// @nodoc
class _$ChatSearcherStateCopyWithImpl<$Res, $Val extends ChatSearcherState>
    implements $ChatSearcherStateCopyWith<$Res> {
  _$ChatSearcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialChats = null,
    Object? queriedChats = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      initialChats: null == initialChats
          ? _value.initialChats
          : initialChats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      queriedChats: null == queriedChats
          ? _value.queriedChats
          : queriedChats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatSearcherStateCopyWith<$Res>
    implements $ChatSearcherStateCopyWith<$Res> {
  factory _$$_ChatSearcherStateCopyWith(_$_ChatSearcherState value,
          $Res Function(_$_ChatSearcherState) then) =
      __$$_ChatSearcherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chat> initialChats, List<Chat> queriedChats, String query});
}

/// @nodoc
class __$$_ChatSearcherStateCopyWithImpl<$Res>
    extends _$ChatSearcherStateCopyWithImpl<$Res, _$_ChatSearcherState>
    implements _$$_ChatSearcherStateCopyWith<$Res> {
  __$$_ChatSearcherStateCopyWithImpl(
      _$_ChatSearcherState _value, $Res Function(_$_ChatSearcherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialChats = null,
    Object? queriedChats = null,
    Object? query = null,
  }) {
    return _then(_$_ChatSearcherState(
      null == initialChats
          ? _value._initialChats
          : initialChats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      null == queriedChats
          ? _value._queriedChats
          : queriedChats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatSearcherState implements _ChatSearcherState {
  const _$_ChatSearcherState(
      final List<Chat> initialChats, final List<Chat> queriedChats, this.query)
      : _initialChats = initialChats,
        _queriedChats = queriedChats;

  final List<Chat> _initialChats;
  @override
  List<Chat> get initialChats {
    if (_initialChats is EqualUnmodifiableListView) return _initialChats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initialChats);
  }

  final List<Chat> _queriedChats;
  @override
  List<Chat> get queriedChats {
    if (_queriedChats is EqualUnmodifiableListView) return _queriedChats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queriedChats);
  }

  @override
  final String query;

  @override
  String toString() {
    return 'ChatSearcherState(initialChats: $initialChats, queriedChats: $queriedChats, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatSearcherState &&
            const DeepCollectionEquality()
                .equals(other._initialChats, _initialChats) &&
            const DeepCollectionEquality()
                .equals(other._queriedChats, _queriedChats) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_initialChats),
      const DeepCollectionEquality().hash(_queriedChats),
      query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatSearcherStateCopyWith<_$_ChatSearcherState> get copyWith =>
      __$$_ChatSearcherStateCopyWithImpl<_$_ChatSearcherState>(
          this, _$identity);
}

abstract class _ChatSearcherState implements ChatSearcherState {
  const factory _ChatSearcherState(final List<Chat> initialChats,
      final List<Chat> queriedChats, final String query) = _$_ChatSearcherState;

  @override
  List<Chat> get initialChats;
  @override
  List<Chat> get queriedChats;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_ChatSearcherStateCopyWith<_$_ChatSearcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
