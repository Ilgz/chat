part of 'sign_in_form_bloc.dart';
@freezed
abstract class SignInFormEvent with _$SignInFormEvent{
  factory SignInFormEvent.emailChanged(String emailStr)=EmailChanged;
  factory SignInFormEvent.passwordChanged(String passwordStr)=PasswordChanged;
  factory SignInFormEvent.showPasswordChanged()=_ShowPasswordChanged;
  factory SignInFormEvent.signInWithEmailAndPasswordPressed()=SignInWithEmailAndPasswordPressed;
}
