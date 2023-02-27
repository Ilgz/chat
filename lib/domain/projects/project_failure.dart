import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_failure.freezed.dart';
@freezed
abstract class FirebaseFirestoreFailure with _$FirebaseFirestoreFailure{
  const factory FirebaseFirestoreFailure.unexpected()=_Unexpected;
  const factory FirebaseFirestoreFailure.insufficientPermission()=_InsufficientPermission;
  const factory FirebaseFirestoreFailure.unableToUpdate()=_UnableToUpdate;
}