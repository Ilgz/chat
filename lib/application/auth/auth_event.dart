part of 'auth_bloc.dart';
@freezed
abstract class AuthEvent with _$AuthEvent{
  factory AuthEvent.authCheckRequested()=AuthCheckRequested;
  factory AuthEvent.signedOut()=SignedOut;
}