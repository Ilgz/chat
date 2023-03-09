import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:chat/presentation/chat/widgets/direct_chat_tile.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/presentation/chat/widgets/group_chat_tile.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:chat/presentation/core/widgets/no_result_card.dart';

class ChatsOverviewPage extends StatelessWidget {
const ChatsOverviewPage({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
  return CustomScaffold(
    hasBackButton: false,
      appBarTitle: Text("Чат"),
      actions: [
        IconButton(onPressed: (){
          goToChatSearchPage(context);
        }, icon: Icon(Icons.search)),
        IconButton(onPressed: (){
          goToProfilePage(context);

        }, icon: Icon(Icons.person)),
      ],
      isScrolling: true,
      body: BlocBuilder<ProjectWatcherBloc, ProjectWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => const SizedBox(),
              loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
              loadSuccess: (state) {
                return Column(children: [
                  (){
                  return BlocBuilder<ChatWatcherCubit,ChatWatcherState>(builder: (context,state){
                    return state.map(initial: (_)=>const SizedBox(), loadInProgress: (_)=>const Center(child: CircularProgressIndicator(),), loadSuccess: (state){
                      final chats = state.chats;
                      if(chats.isNotEmpty){
                        return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: chats.length,
                            itemBuilder: (context, index) {
                              final chat = chats[index];
                              if (chat.failureOption.isSome()) {
                                return const Card(
                                  child: Text("Error"),
                                );
                              } else {
                                return DirectChatTile(chat: chat,);
                                //   return GroupChatCard(project: project);
                              }
                            });
                      }else{
                        return  const NoResultCard("No chat found", Icons.account_tree_outlined);
                      }
                    }, loadFailure: (_)=>const SizedBox());
                  });}(),

                      (){List<Project> projects = state.projects.toList();
                  projects
                      .sort((a, b) {
                    final aTimeStamp=a.messages.isEmpty?a.date:a.messages.last.date;
                    final bTimeStamp=b.messages.isEmpty?b.date:b.messages.last.date;
                    return  bTimeStamp.compareTo(aTimeStamp);});
                  if(projects.isNotEmpty){
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: projects.length,
                        itemBuilder: (context, index) {
                          final project = projects[index];
                          if (project.failureOption.isSome()&&!project.isNew) {
                            return const Card(
                              child: Text("Error"),
                            );
                          } else {
                            return GroupChatTile(project: project);
                          }
                        });
                  }else{
                    return  const NoResultCard("No chat found", Icons.account_tree_outlined);
                  }}(),
                ],);

              },
              loadFailure: (state) {
                return SizedBox();
              });
        },
      ),
      );
}
}