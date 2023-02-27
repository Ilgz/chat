part of 'sign_up_form_bloc.dart';



@freezed
abstract class SignUpFormState with _$SignUpFormState{
  factory SignUpFormState({required UserName userName,required EmailAddress emailAddress,required Password password,required ConfirmationPassword confirmationPassword,required bool showErrorMessages,required bool isSubmitting,required Option<Either<AuthFailure,Unit>> authFailureSuccessOption})= _SignUpFormState;
  factory SignUpFormState.initial()=>SignUpFormState(userName:UserName(""),emailAddress: EmailAddress(""), password: Password(""),confirmationPassword: ConfirmationPassword("",Password("")), showErrorMessages: false, isSubmitting: false,authFailureSuccessOption :none() );
}

