import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async{
    await  event.map(authCheckRequested: (e)async{
      final userOption=_authFacade.getSignedInUserId();
             emit(userOption.fold(()=>AuthState.unAuthenticated(),(_)=>AuthState.authenticated()));
      }, signedOut: (e)async{
          emit(AuthState.loading());
           await _authFacade.signOut();
           await _authFacade.updateActiveStatus(false);
           emit(AuthState.unAuthenticated());
      });
    });
  }
}
