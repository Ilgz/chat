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
      appBarTitle: "Чат",
      body: BlocBuilder<ProjectWatcherBloc, ProjectWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => const SizedBox(),
              loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
              loadSuccess: (state) {
                    List<Project> projects = state.projects.toList();
                    projects
                        .sort((a, b) {
                          final aTimeStamp=a.messages.isEmpty?a.date:a.messages.last.date;
                          final bTimeStamp=b.messages.isEmpty?b.date:b.messages.last.date;
                     return  bTimeStamp.compareTo(aTimeStamp);});
                        if(projects.isNotEmpty){
                          return LayoutBuilder(
                              builder: (context, constraints) {
                                return ListView.builder(
                                    itemCount: projects.length,
                                    itemBuilder: (context, index) {
                                      final project = projects[index];
                                      if (project.failureOption.isSome()&&!project.isNew) {
                                        return const Card(
                                          child: Text("Error"),
                                        );
                                      } else {
                                        return GroupChatCard(project: project);
                                      }
                                    });
                              });
                        }else{
                          return  const NoResultCard("No chat found", Icons.account_tree_outlined);
                        }
              },
              loadFailure: (state) {
                return SizedBox();
              });
        },
      ),
      );
}
}