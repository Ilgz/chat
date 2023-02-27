part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState{
  factory SignInFormState({required EmailAddress emailAddress,required Password password,required bool showErrorMessages,required bool isSubmitting,required Option<Either<AuthFailure,Unit>> authFailureSuccessOption})= _SignInFormState;
  factory SignInFormState.initial()=>SignInFormState(emailAddress: EmailAddress(""), password: Password(""), showErrorMessages: false, isSubmitting: false,authFailureSuccessOption :none() );
}
