// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Task {
  TaskName get taskName => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  Timestamp get date => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  Option<DocumentReference<Object?>> get assignee =>
      throw _privateConstructorUsedError;
  bool get canChangeDoneStatus => throw _privateConstructorUsedError;
  Option<bool> get canBeModifiedAndIsAdmin =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {TaskName taskName,
      bool isDone,
      Timestamp date,
      bool isNew,
      Option<DocumentReference<Object?>> assignee,
      bool canChangeDoneStatus,
      Option<bool> canBeModifiedAndIsAdmin});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
    Object? isDone = null,
    Object? date = null,
    Object? isNew = null,
    Object? assignee = null,
    Object? canChangeDoneStatus = null,
    Object? canBeModifiedAndIsAdmin = null,
  }) {
    return _then(_value.copyWith(
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as TaskName,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      assignee: null == assignee
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as Option<DocumentReference<Object?>>,
      canChangeDoneStatus: null == canChangeDoneStatus
          ? _value.canChangeDoneStatus
          : canChangeDoneStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      canBeModifiedAndIsAdmin: null == canBeModifiedAndIsAdmin
          ? _value.canBeModifiedAndIsAdmin
          : canBeModifiedAndIsAdmin // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TaskName taskName,
      bool isDone,
      Timestamp date,
      bool isNew,
      Option<DocumentReference<Object?>> assignee,
      bool canChangeDoneStatus,
      Option<bool> canBeModifiedAndIsAdmin});
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
    Object? isDone = null,
    Object? date = null,
    Object? isNew = null,
    Object? assignee = null,
    Object? canChangeDoneStatus = null,
    Object? canBeModifiedAndIsAdmin = null,
  }) {
    return _then(_$_Task(
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as TaskName,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      assignee: null == assignee
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as Option<DocumentReference<Object?>>,
      canChangeDoneStatus: null == canChangeDoneStatus
          ? _value.canChangeDoneStatus
          : canChangeDoneStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      canBeModifiedAndIsAdmin: null == canBeModifiedAndIsAdmin
          ? _value.canBeModifiedAndIsAdmin
          : canBeModifiedAndIsAdmin // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc

class _$_Task extends _Task {
  _$_Task(
      {required this.taskName,
      required this.isDone,
      required this.date,
      this.isNew = false,
      required this.assignee,
      required this.canChangeDoneStatus,
      required this.canBeModifiedAndIsAdmin})
      : super._();

  @override
  final TaskName taskName;
  @override
  final bool isDone;
  @override
  final Timestamp date;
  @override
  @JsonKey()
  final bool isNew;
  @override
  final Option<DocumentReference<Object?>> assignee;
  @override
  final bool canChangeDoneStatus;
  @override
  final Option<bool> canBeModifiedAndIsAdmin;

  @override
  String toString() {
    return 'Task(taskName: $taskName, isDone: $isDone, date: $date, isNew: $isNew, assignee: $assignee, canChangeDoneStatus: $canChangeDoneStatus, canBeModifiedAndIsAdmin: $canBeModifiedAndIsAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.assignee, assignee) ||
                other.assignee == assignee) &&
            (identical(other.canChangeDoneStatus, canChangeDoneStatus) ||
                other.canChangeDoneStatus == canChangeDoneStatus) &&
            (identical(
                    other.canBeModifiedAndIsAdmin, canBeModifiedAndIsAdmin) ||
                other.canBeModifiedAndIsAdmin == canBeModifiedAndIsAdmin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskName, isDone, date, isNew,
      assignee, canChangeDoneStatus, canBeModifiedAndIsAdmin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);
}

abstract class _Task extends Task {
  factory _Task(
      {required final TaskName taskName,
      required final bool isDone,
      required final Timestamp date,
      final bool isNew,
      required final Option<DocumentReference<Object?>> assignee,
      required final bool canChangeDoneStatus,
      required final Option<bool> canBeModifiedAndIsAdmin}) = _$_Task;
  _Task._() : super._();

  @override
  TaskName get taskName;
  @override
  bool get isDone;
  @override
  Timestamp get date;
  @override
  bool get isNew;
  @override
  Option<DocumentReference<Object?>> get assignee;
  @override
  bool get canChangeDoneStatus;
  @override
  Option<bool> get canBeModifiedAndIsAdmin;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
