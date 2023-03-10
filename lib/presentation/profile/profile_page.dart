import 'package:chat/application/auth/auth_bloc.dart';
import 'package:chat/application/auth/profile_watcher/profile_watcher_cubit.dart';
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:chat/presentation/profile/widgets/theme_switcher.dart';
import 'package:chat/presentation/users/users_overview/widgets/user_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      actions: const [
        ThemeSwitcher(),
        SizedBox(
          width: 10,
        )
      ],
      appBarTitle: Text("Профиль"),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
              unAuthenticated: (_) {
                goToSignInPage(context);
              },
              orElse: () {});
        },
        child: BlocBuilder<ProfileWatcherCubit, ProfileWatcherState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => const SizedBox(),
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                getSignedInUserSuccess: (state) {
                  final user = state.user;
                  return BlocBuilder<ProjectWatcherBloc, ProjectWatcherState>(
                    builder: (context, state) {
                      return state.map(
                          initial: (_) => const SizedBox(),
                          loadInProgress: (_) =>
                              const Center(child: CircularProgressIndicator()),
                          loadSuccess: (state) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    UserIcon(
                                      user.userName.getOrCrash(),
                                      size: 70,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(user.emailAddress.getOrCrash(),
                                    style:
                                        Theme.of(context).textTheme.titleLarge),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                BlocBuilder<AuthBloc, AuthState>(
                                  builder: (context, state) {
                                    return ElevatedButton(
                                        style: Theme.of(context)
                                            .elevatedButtonTheme
                                            .style,
                                        onPressed: () {
                                          context
                                              .read<AuthBloc>()
                                              .add(AuthEvent.signedOut());
                                        },
                                        child: () {
                                        return  state.maybeMap(
                                              loading: (_) => const SizedBox(
                                                  height: 20,
                                                  width: 20,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation(
                                                            Colors.white),
                                                  )),
                                              orElse: () =>
                                                  const Text("Sign out"));
                                        }());
                                  },
                                ),
                              ],
                            );
                          },
                          loadFailure: (state) {
                            return SizedBox();
                          });
                    },
                  );
                },
                getSignedInUserFailure: (_) => const SizedBox());
          },
        ),
      ),
    );
  }
}
