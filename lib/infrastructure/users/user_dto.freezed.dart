// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<String> get nameSearch => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference<Object?>? get reference =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {String name,
      String email,
      List<String> nameSearch,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference<Object?>? reference});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? nameSearch = null,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nameSearch: null == nameSearch
          ? _value.nameSearch
          : nameSearch // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      List<String> nameSearch,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference<Object?>? reference});
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$_UserDto>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? nameSearch = null,
    Object? reference = freezed,
  }) {
    return _then(_$_UserDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nameSearch: null == nameSearch
          ? _value._nameSearch
          : nameSearch // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  _$_UserDto(
      {required this.name,
      required this.email,
      required final List<String> nameSearch,
      @DocumentReferenceConverter() @JsonKey(ignore: true) this.reference})
      : _nameSearch = nameSearch,
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  final String name;
  @override
  final String email;
  final List<String> _nameSearch;
  @override
  List<String> get nameSearch {
    if (_nameSearch is EqualUnmodifiableListView) return _nameSearch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nameSearch);
  }

  @override
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  final DocumentReference<Object?>? reference;

  @override
  String toString() {
    return 'UserDto(name: $name, email: $email, nameSearch: $nameSearch, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other._nameSearch, _nameSearch) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email,
      const DeepCollectionEquality().hash(_nameSearch), reference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(
      this,
    );
  }
}

abstract class _UserDto extends UserDto {
  factory _UserDto(
      {required final String name,
      required final String email,
      required final List<String> nameSearch,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          final DocumentReference<Object?>? reference}) = _$_UserDto;
  _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  List<String> get nameSearch;
  @override
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference<Object?>? get reference;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
