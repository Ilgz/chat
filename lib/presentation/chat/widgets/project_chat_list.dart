import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/presentation/chat/widgets/error_chat_tile.dart';
import 'package:chat/presentation/chat/widgets/project_chat_tile.dart';
import 'package:chat/presentation/core/widgets/critical_failure_card.dart';
import 'package:chat/presentation/core/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectChatList extends StatelessWidget {
  const ProjectChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectWatcherBloc, ProjectWatcherState>(
      buildWhen: (p, c) => false,
      builder: (context, state) {
        return state.map(
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const CustomProgressIndicator(),
            loadSuccess: (state) {
              return () {
                List<Project> projects = state.projects.toList();
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: projects.length,
                      itemBuilder: (context, index) {
                        final project = projects[index];
                        if (project.failureOption.isSome() &&
                            !project.isNew) {
                          return const ErrorChatTile();
                        } else {
                          return ProjectChatTile(project: project);
                        }
                      });
              }();
            },
            loadFailure: (state) {
              return const CriticalFailureCard();
            });
      },
    );
  }
}
