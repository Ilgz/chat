import 'package:chat/application/auth/auth_bloc.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            unAuthenticated: (_) => goToSignInPage(context),
            authenticated: (_) => goToChatsOverviewPage(context),
            loading: (_) {});
      },
      child: const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
