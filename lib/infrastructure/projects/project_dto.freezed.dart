// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectDto _$ProjectDtoFromJson(Map<String, dynamic> json) {
  return _ProjectDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectDto {
  String get name => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  Timestamp get date => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Object?> get owner => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference<Object?>? get reference =>
      throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  List<DocumentReference<Object?>> get members =>
      throw _privateConstructorUsedError;
  List<MessageChatDto> get messages => throw _privateConstructorUsedError;
  List<TaskDto> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectDtoCopyWith<ProjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDtoCopyWith<$Res> {
  factory $ProjectDtoCopyWith(
          ProjectDto value, $Res Function(ProjectDto) then) =
      _$ProjectDtoCopyWithImpl<$Res, ProjectDto>;
  @useResult
  $Res call(
      {String name,
      bool isPublic,
      @ServerTimestampConverter()
          Timestamp date,
      @DocumentReferenceConverter()
          DocumentReference<Object?> owner,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference<Object?>? reference,
      @DocumentReferenceConverter()
          List<DocumentReference<Object?>> members,
      List<MessageChatDto> messages,
      List<TaskDto> tasks});
}

/// @nodoc
class _$ProjectDtoCopyWithImpl<$Res, $Val extends ProjectDto>
    implements $ProjectDtoCopyWith<$Res> {
  _$ProjectDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isPublic = null,
    Object? date = null,
    Object? owner = null,
    Object? reference = freezed,
    Object? members = null,
    Object? messages = null,
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<DocumentReference<Object?>>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageChatDto>,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectDtoCopyWith<$Res>
    implements $ProjectDtoCopyWith<$Res> {
  factory _$$_ProjectDtoCopyWith(
          _$_ProjectDto value, $Res Function(_$_ProjectDto) then) =
      __$$_ProjectDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool isPublic,
      @ServerTimestampConverter()
          Timestamp date,
      @DocumentReferenceConverter()
          DocumentReference<Object?> owner,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference<Object?>? reference,
      @DocumentReferenceConverter()
          List<DocumentReference<Object?>> members,
      List<MessageChatDto> messages,
      List<TaskDto> tasks});
}

/// @nodoc
class __$$_ProjectDtoCopyWithImpl<$Res>
    extends _$ProjectDtoCopyWithImpl<$Res, _$_ProjectDto>
    implements _$$_ProjectDtoCopyWith<$Res> {
  __$$_ProjectDtoCopyWithImpl(
      _$_ProjectDto _value, $Res Function(_$_ProjectDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isPublic = null,
    Object? date = null,
    Object? owner = null,
    Object? reference = freezed,
    Object? members = null,
    Object? messages = null,
    Object? tasks = null,
  }) {
    return _then(_$_ProjectDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<DocumentReference<Object?>>,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageChatDto>,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectDto extends _ProjectDto {
  _$_ProjectDto(
      {required this.name,
      required this.isPublic,
      @ServerTimestampConverter()
          required this.date,
      @DocumentReferenceConverter()
          required this.owner,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          this.reference,
      @DocumentReferenceConverter()
          required final List<DocumentReference<Object?>> members,
      required final List<MessageChatDto> messages,
      required final List<TaskDto> tasks})
      : _members = members,
        _messages = messages,
        _tasks = tasks,
        super._();

  factory _$_ProjectDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectDtoFromJson(json);

  @override
  final String name;
  @override
  final bool isPublic;
  @override
  @ServerTimestampConverter()
  final Timestamp date;
  @override
  @DocumentReferenceConverter()
  final DocumentReference<Object?> owner;
  @override
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  final DocumentReference<Object?>? reference;
  final List<DocumentReference<Object?>> _members;
  @override
  @DocumentReferenceConverter()
  List<DocumentReference<Object?>> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final List<MessageChatDto> _messages;
  @override
  List<MessageChatDto> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final List<TaskDto> _tasks;
  @override
  List<TaskDto> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'ProjectDto(name: $name, isPublic: $isPublic, date: $date, owner: $owner, reference: $reference, members: $members, messages: $messages, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      isPublic,
      date,
      owner,
      reference,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectDtoCopyWith<_$_ProjectDto> get copyWith =>
      __$$_ProjectDtoCopyWithImpl<_$_ProjectDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectDtoToJson(
      this,
    );
  }
}

abstract class _ProjectDto extends ProjectDto {
  factory _ProjectDto(
      {required final String name,
      required final bool isPublic,
      @ServerTimestampConverter()
          required final Timestamp date,
      @DocumentReferenceConverter()
          required final DocumentReference<Object?> owner,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          final DocumentReference<Object?>? reference,
      @DocumentReferenceConverter()
          required final List<DocumentReference<Object?>> members,
      required final List<MessageChatDto> messages,
      required final List<TaskDto> tasks}) = _$_ProjectDto;
  _ProjectDto._() : super._();

  factory _ProjectDto.fromJson(Map<String, dynamic> json) =
      _$_ProjectDto.fromJson;

  @override
  String get name;
  @override
  bool get isPublic;
  @override
  @ServerTimestampConverter()
  Timestamp get date;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Object?> get owner;
  @override
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference<Object?>? get reference;
  @override
  @DocumentReferenceConverter()
  List<DocumentReference<Object?>> get members;
  @override
  List<MessageChatDto> get messages;
  @override
  List<TaskDto> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectDtoCopyWith<_$_ProjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) {
  return _TaskDto.fromJson(json);
}

/// @nodoc
mixin _$TaskDto {
  String get itemName => throw _privateConstructorUsedError;
  bool get complete => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  Timestamp get date => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Object?>? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDtoCopyWith<TaskDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDtoCopyWith<$Res> {
  factory $TaskDtoCopyWith(TaskDto value, $Res Function(TaskDto) then) =
      _$TaskDtoCopyWithImpl<$Res, TaskDto>;
  @useResult
  $Res call(
      {String itemName,
      bool complete,
      @ServerTimestampConverter() Timestamp date,
      @DocumentReferenceConverter() DocumentReference<Object?>? owner});
}

/// @nodoc
class _$TaskDtoCopyWithImpl<$Res, $Val extends TaskDto>
    implements $TaskDtoCopyWith<$Res> {
  _$TaskDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? complete = null,
    Object? date = null,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskDtoCopyWith<$Res> implements $TaskDtoCopyWith<$Res> {
  factory _$$_TaskDtoCopyWith(
          _$_TaskDto value, $Res Function(_$_TaskDto) then) =
      __$$_TaskDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemName,
      bool complete,
      @ServerTimestampConverter() Timestamp date,
      @DocumentReferenceConverter() DocumentReference<Object?>? owner});
}

/// @nodoc
class __$$_TaskDtoCopyWithImpl<$Res>
    extends _$TaskDtoCopyWithImpl<$Res, _$_TaskDto>
    implements _$$_TaskDtoCopyWith<$Res> {
  __$$_TaskDtoCopyWithImpl(_$_TaskDto _value, $Res Function(_$_TaskDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? complete = null,
    Object? date = null,
    Object? owner = freezed,
  }) {
    return _then(_$_TaskDto(
      null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskDto extends _TaskDto {
  _$_TaskDto(
      this.itemName,
      this.complete,
      @ServerTimestampConverter() this.date,
      @DocumentReferenceConverter() this.owner)
      : super._();

  factory _$_TaskDto.fromJson(Map<String, dynamic> json) =>
      _$$_TaskDtoFromJson(json);

  @override
  final String itemName;
  @override
  final bool complete;
  @override
  @ServerTimestampConverter()
  final Timestamp date;
  @override
  @DocumentReferenceConverter()
  final DocumentReference<Object?>? owner;

  @override
  String toString() {
    return 'TaskDto(itemName: $itemName, complete: $complete, date: $date, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskDto &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.complete, complete) ||
                other.complete == complete) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemName, complete, date, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskDtoCopyWith<_$_TaskDto> get copyWith =>
      __$$_TaskDtoCopyWithImpl<_$_TaskDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskDtoToJson(
      this,
    );
  }
}

abstract class _TaskDto extends TaskDto {
  factory _TaskDto(
      final String itemName,
      final bool complete,
      @ServerTimestampConverter()
          final Timestamp date,
      @DocumentReferenceConverter()
          final DocumentReference<Object?>? owner) = _$_TaskDto;
  _TaskDto._() : super._();

  factory _TaskDto.fromJson(Map<String, dynamic> json) = _$_TaskDto.fromJson;

  @override
  String get itemName;
  @override
  bool get complete;
  @override
  @ServerTimestampConverter()
  Timestamp get date;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Object?>? get owner;
  @override
  @JsonKey(ignore: true)
  _$$_TaskDtoCopyWith<_$_TaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}
