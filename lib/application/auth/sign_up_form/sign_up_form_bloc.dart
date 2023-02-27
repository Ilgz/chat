
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/auth/auth_failure.dart';
import 'package:chat/domain/auth/i_auth_facade.dart';
import 'package:chat/domain/auth/value_objects.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_bloc.freezed.dart';
part 'sign_up_form_state.dart';
@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade _authFacade;

  SignUpFormBloc(this._authFacade) : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>((event, emit) async{
      await event.map(emailChanged: (e){
        emit(state.copyWith(emailAddress: EmailAddress(e.emailStr),authFailureSuccessOption: none()));
      }, userNameChanged: (e){
        emit(state.copyWith(userName: UserName(e.userNameStr),authFailureSuccessOption: none()));
      }, confirmationPasswordChanged: (e){
        emit(state.copyWith(confirmationPassword: ConfirmationPassword(e.confirmedPasswordStr,state.password),authFailureSuccessOption: none()));
      }, passwordChanged: (e){
        emit(state.copyWith(password: Password(e.passwordStr),authFailureSuccessOption: none()));
      }, registerWithEmailAndPasswordPressed: (e)async{
        Either<AuthFailure,Unit>? failureOrSuccess;
        final isEmailValid=state.emailAddress.isValid();
        final isPasswordValid=state.password.isValid();
        final isConfirmationPasswordValid=state.confirmationPassword.isValid();
        final isUsernameValid=state.userName.isValid();
          emit(state.copyWith(isSubmitting: true,authFailureSuccessOption: none()));
        if(isEmailValid&&isPasswordValid&&isConfirmationPasswordValid&&isUsernameValid){
          emit(state.copyWith(isSubmitting: true,authFailureSuccessOption: none()));
          failureOrSuccess=await _authFacade.registerWithEmailAndPassword(userName:state.userName,emailAddress: state.emailAddress, password: state.password);
        }
        emit(state.copyWith(showErrorMessages: true,isSubmitting:false,authFailureSuccessOption: optionOf(failureOrSuccess)));
      });
    });
  }

}
