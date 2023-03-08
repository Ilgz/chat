import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat/application/auth/auth_bloc.dart';
import 'package:chat/application/auth/profile_watcher/profile_watcher_cubit.dart';
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:chat/presentation/profile/widgets/theme_switcher.dart';
import 'package:chat/presentation/users/users_overview/widgets/user_icon.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    context.read<ProfileWatcherCubit>().getSignedInUser();
    return BlocListener<AuthBloc, AuthState>(
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
              loading: (_) => const Center(child: CircularProgressIndicator()),
              getSignedInUserSuccess: (state) {
                final user = state.user;
                return CustomScaffold(
                  actions: const [
                    ThemeSwitcher(),
                    SizedBox(width: 10,)
                  ],
                  appBarTitle: Text(user.userName.getOrCrash()),
                  body: BlocBuilder<ProjectWatcherBloc, ProjectWatcherState>(
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
                                    Text(
                                      "Active projects\n${state.projects.length}",
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context).textTheme.bodyText1,
                                    ),
                                    UserIcon(
                                      user.userName.getOrCrash(),
                                      size: 70,
                                    ),
                                    Text(
                                      "Finished projects\n0",
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  user.emailAddress.getOrCrash(),
                                  style: Theme.of(context).textTheme.titleLarge
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                ElevatedButton(
                                  style: Theme.of(context).elevatedButtonTheme.style,
                                  onPressed: () {
                                    context
                                        .read<AuthBloc>()
                                        .add(AuthEvent.signedOut());
                                  },
                                  child: const Text(
                                    "Logout",
                                  ),
                                ),
                              ],
                            );
                          },
                          loadFailure: (state) {
                            return SizedBox();
                          });
                    },
                  ),
                );
              },
              getSignedInUserFailure: (_) => const SizedBox());
        },
      ),
    );
  }
}
