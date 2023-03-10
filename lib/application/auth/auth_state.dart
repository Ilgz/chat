part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState{
  factory AuthState.initial()=Initial;
  factory AuthState.loading()=_Loading;
  factory AuthState.authenticated()=Authenticated;
  factory AuthState.unAuthenticated()=UnAuthenticated;
}
