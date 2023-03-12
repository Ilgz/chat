import 'package:chat/application/auth/auth_bloc.dart';
import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:chat/presentation/core/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return ElevatedButton(
            style: Theme.of(context)
                .elevatedButtonTheme
                .style,
            onPressed: () {
              state.maybeMap(
                  loading: (_) =>null,
                  orElse: () => context
                      .read<AuthBloc>()
                      .add(AuthEvent.signedOut()));
            },
            child: () {
              return state.maybeMap(
                  loading: (_) => const SizedBox(
                      height: 20,
                      width: 20,
                      child:CustomProgressIndicator(color: Colors.white,)),
                  orElse: () => Text(AppLocale
                      .signOut
                      .getString(context)));
            }());
      },
    );
  }
}
