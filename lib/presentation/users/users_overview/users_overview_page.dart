import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat/application/users/user_searcher/user_searcher_cubit.dart';
import 'package:chat/application/users/user_watcher/user_watcher_bloc.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:chat/presentation/core/widgets/no_result_card.dart';
import 'package:chat/presentation/core/widgets/responsive_gridview.dart';
import 'package:chat/presentation/users/users_overview/widgets/critical_failure_display.dart';
import 'package:chat/presentation/users/users_overview/widgets/search_widget.dart';
import 'package:chat/presentation/users/users_overview/widgets/user_card.dart';

class UsersOverviewPage extends StatelessWidget {
  const UsersOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<UserWatcherBloc>().add(const UserWatcherEvent.startWatchAll());
    return BlocProvider(
      create: (context) => UserSearcherCubit(),
      child: CustomScaffold(
          appBarTitle: Text("Пользователи"),
          body: BlocBuilder<UserWatcherBloc, UserWatcherState>(
            builder: (context, state) {
              return state.map(
                  initial: (_) => const SizedBox(),
                  loadInProgress: (_) => Center(
                        child: LinearProgressIndicator(
                            color: Theme.of(context).primaryColor),
                      ),
                  loadSuccess: (state) {
                    return Column(
                      children: [
                        SearchWidget(
                          onChanged: (text) {
                            context
                                .read<UserSearcherCubit>()
                                .searchUsers(state.users, text);
                          },
                          onBackPressed: () => context
                              .read<UserSearcherCubit>()
                              .searchUsers(state.users, ""),
                        ),
                        Expanded(
                          child:
                              BlocBuilder<UserSearcherCubit, UserSearcherState>(
                            builder: (context, userSearcherState) {
                              return userSearcherState.map(
                                  initial: (_) => ResponsiveGridView(
                                        items: state.users,
                                        itemBuilder: (user) {
                                          return UserCard(
                                            user: user,
                                          );
                                        },
                                      ),
                                  searchSuccess: (state) => ResponsiveGridView(
                                        items: state.users,
                                        itemBuilder: (user) {
                                          return UserCard(
                                            user: user,
                                          );
                                        },
                                      ),
                                  searchFailure: (_) => const NoResultCard(
                                      "Не удалось найти пользователя",
                                      Icons.person_search_outlined));
                            },
                          ),
                        ),
                      ],
                    );
                  },
                  loadFailure: (state) => UserCriticalFailureDisplay(
                        failure: state.userFailure,
                      ));
            },
          )),
    );
  }
}
