part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent{
  factory SignUpFormEvent.emailChanged(String emailStr)=EmailChanged;
  factory SignUpFormEvent.userNameChanged(String userNameStr)=_UserNameChanged;
  factory SignUpFormEvent.confirmationPasswordChanged(String confirmedPasswordStr)=_ConfirmedPasswordChanged;
  factory SignUpFormEvent.passwordChanged(String passwordStr)=PasswordChanged;
  factory SignUpFormEvent.registerWithEmailAndPasswordPressed()=RegisterWithEmailAndPasswordPressed;
}
