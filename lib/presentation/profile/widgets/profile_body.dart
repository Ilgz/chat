import 'package:chat/application/auth/profile_watcher/profile_watcher_cubit.dart';
import 'package:chat/presentation/core/widgets/critical_failure_card.dart';
import 'package:chat/presentation/core/widgets/custom_progress_indicator.dart';
import 'package:chat/presentation/profile/widgets/sign_out_button.dart';
import 'package:chat/presentation/users/users_overview/widgets/user_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileWatcherCubit, ProfileWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const CustomProgressIndicator(),
            getSignedInUserSuccess: (state) {
              final user = state.user;
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const SignOutButton()
                ],
              );
            },
            getSignedInUserFailure: (_) => const CriticalFailureCard());
      },
    );
  }
}
