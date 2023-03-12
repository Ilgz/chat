import 'package:chat/application/auth/auth_bloc.dart';
import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:chat/presentation/profile/widgets/locale_switcher.dart';
import 'package:chat/presentation/profile/widgets/profile_body.dart';
import 'package:chat/presentation/profile/widgets/theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      actions: const [
        ThemeSwitcher(),
        SizedBox(
          width: 20,
        ),
        LocaleSwitcher(),
        SizedBox(
          width: 10,
        )
      ],
      appBarTitle: Text(AppLocale.profile.getString(context)),
      body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
                unAuthenticated: (_) {
                  goToSignInPage(context);
                },
                orElse: () {});
          },
          child: const ProfileBody()),
    );
  }
}
