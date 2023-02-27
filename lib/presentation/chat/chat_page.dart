import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat/application/chat/chat_form_bloc/chat_form_bloc.dart';
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/presentation/chat/widgets/chat_day_divider_card.dart';
import 'package:chat/presentation/chat/widgets/message_card.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:chat/presentation/core/widgets/failure_snackbar.dart';
import 'package:chat/presentation/core/widgets/no_result_card.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key, required this.initialProject}) : super(key: key);
  final Project initialProject;
  @override
  Widget build(BuildContext context) {
    final messageTextController = TextEditingController();
   // final messageScrollController = ScrollController();
    final messageTextFocus = FocusNode();
    return BlocListener<ChatFormBloc, ChatFormState>(
      listener: (context, state) {
        state.sendMessageFailureSuccessOption.fold(() {}, (either) {
          either.fold((failure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(FailureSnackBar(failure: failure));
          }, (_) {
            // messageScrollController.animateTo(0,
            //     duration: const Duration(milliseconds: 200),
            //     curve: Curves.bounceInOut);
          });
        });
      },
      child: CustomScaffold(
          appBarTitle: initialProject.projectName.getOrCrash(),
          body: Column(
            children: [
              Expanded(
                child: BlocBuilder<ProjectWatcherBloc, ProjectWatcherState>(
                  builder: (context, state) {
                    return state.map(
                        initial: (_) => const SizedBox(),
                        loadInProgress: (_) =>
                            const Center(child: CircularProgressIndicator()),
                        loadSuccess: (state) {
                          final project = state.projects.firstWhere(
                              (project) =>
                                  project.reference.path ==
                                  initialProject.reference.path,
                              orElse: () => initialProject);
                          final messages = project.messages.reversed.toList();
                          if (messages.isNotEmpty) {
                            return ListView.separated(
                              //controller: messageScrollController,
                              padding: const EdgeInsets.all(10),
                              reverse: true,
                              itemBuilder: (context, index) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (index == messages.length - 1) ...[
                                      ChatDayDividerCard(date: messages[index].date.toDate())
                                    ],
                                    MessageTile(
                                      messageChat: messages[index],
                                    )
                                  ],
                                );
                              },
                              itemCount: messages.length,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                if (messages[index].date.toDate().day !=
                                    messages[index + 1].date.toDate().day) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top:10.0), child: ChatDayDividerCard(date: messages[index].date.toDate())),
                                    ],
                                  );
                                }
                                return const SizedBox();
                              },
                              //controller: listScrollController,
                            );
                          } else {
                            return const NoResultCard(
                                "No messages yet", Icons.message_outlined);
                          }
                        },
                        loadFailure: (state) {
                          return SizedBox();
                        });
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Card(
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          cursorColor: Theme.of(context).primaryColor,
                          focusNode: messageTextFocus,
                          onChanged: (text) {
                            context
                                .read<ChatFormBloc>()
                                .add(ChatFormEvent.messageContentChanged(text));
                          },
                          onSubmitted: (text)
    {
      context
          .read<ChatFormBloc>()
          .add(ChatFormEvent.sendMessage(initialProject));
      messageTextController.clear();
      messageTextFocus.unfocus();
                          },
                          style:Theme.of(context).textTheme.bodyText1,
                          controller: messageTextController,
                          decoration: const InputDecoration.collapsed(
                            hintText: 'Type your message...',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          // focusNode: focusNode,
                          autofocus: true,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () {
                            context
                                .read<ChatFormBloc>()
                                .add(ChatFormEvent.sendMessage(initialProject));
                            messageTextController.clear();
                            messageTextFocus.unfocus();
                          },
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

