import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart';
import 'package:chat/application/users/user_searcher/user_searcher_cubit.dart';
import 'package:chat/application/users/user_watcher/user_watcher_bloc.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:chat/presentation/core/widgets/no_result_card.dart';
import 'package:chat/presentation/core/widgets/responsive_gridview.dart';
import 'package:chat/presentation/users/users_overview/widgets/search_widget.dart';
import 'package:chat/presentation/users/users_overview/widgets/user_card.dart';

class MembersPage extends HookWidget {
  const MembersPage({Key? key, required this.initialProject}) : super(key: key);
  final Project initialProject;
  @override
  Widget build(BuildContext context) {
    final isSearching=useState(false);
    return BlocProvider(
  create: (context) => UserSearcherCubit(),
  child: CustomScaffold(appBarTitle:initialProject.projectName.getOrCrash(),body:
    BlocBuilder<ProjectWatcherBloc, ProjectWatcherState>(
      builder: (context, state) {
        return state.maybeMap(loadSuccess:(state){
          Project project=state.projects.firstWhere((project) => project.reference.path==initialProject.reference.path,orElse: ()=>initialProject);
            return BlocBuilder<UserWatcherBloc,UserWatcherState>(builder: (context,state){
                        return state.maybeMap(loadSuccess:(state){
                          final allUsers=state.users;
                          return Column(
                            children: [
                              SearchWidget(isSearchingInitial: isSearching,onChanged: (text){
                                if (text.length >= 3) {
                                  context.read<UserSearcherCubit>().searchUsers(allUsers, text);
                                }
                              }),
                              IndexedStack(index:isSearching.value?0:1,children: [
                                  BlocBuilder<UserSearcherCubit, UserSearcherState>(
                                    builder: (context, state) {
                                      return state.map(initial: (_)=>const NoResultCard(
                                          "Чтобы добавить участника в проект, найдите его по имени.",
                                          Icons.person_add_alt_1_outlined), searchSuccess: (state){
                                        return ResponsiveGridView(items: state.users,itemBuilder: (user){
                                          return UserCard(user: user,projectAndOptionTask: Tuple2(project,null));
                                        },);
                                      }, searchFailure: (_)=>const NoResultCard(
                                          "Не удалось найти пользователя",
                                          Icons.person_search_outlined));

                                    },
                                  ),
                                ResponsiveGridView(items: project.members,itemBuilder: (user){
                                  return UserCard(user: user,projectAndOptionTask: Tuple2(project,null));

                                },),

                              ],)


                            ],
                          );
                        },orElse: ()=>const SizedBox());
                      });


        },orElse: ()=>const SizedBox());

      },
    )),
);
  }
}


