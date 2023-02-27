import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';
@freezed
    abstract class AuthFailure with _$AuthFailure{
  factory AuthFailure.remoteError(String errorName)=LocalError;
  factory AuthFailure.serverError()=ServerError;
  factory AuthFailure.emailAlreadyInUse()=EmailAlreadyInUse;
  factory AuthFailure.invalidEmailAndPassword()=InvalidEmailAndPassword;
}