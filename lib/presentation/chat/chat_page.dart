import 'package:chat/application/chat/chat_form_bloc/chat_form_bloc.dart';
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/infrastructure/users/user_dto.dart';
import 'package:chat/presentation/chat/widgets/chat_date_divider_card.dart';
import 'package:chat/presentation/chat/widgets/message_tile.dart';
import 'package:chat/presentation/core/strings.dart';
import 'package:chat/presentation/core/utils/my_date_util.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:chat/presentation/core/widgets/failure_snackbar.dart';
import 'package:chat/presentation/core/widgets/no_result_card.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localization/flutter_localization.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key, required this.projectOrChat}) : super(key: key);
  final Either<Project, Chat> projectOrChat;
  @override
  Widget build(BuildContext context) {
    final _focus = FocusNode();
    final _controller = TextEditingController();
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
        titleSpacing: 0,
        appBarTitle: Row(mainAxisSize:MainAxisSize.min,children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            child: const Icon(Icons.person, color: Colors.white),
          ),
          const SizedBox(width: 10),
          //user name & last seen time
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //user name
              Text(
                projectOrChat.fold(
                      (project) => project.projectName.getOrCrash(),
                      (chat) => chat.chattingWith.userName.getOrCrash()),
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),

              const SizedBox(height: 2),
              projectOrChat.fold((_) => const SizedBox(), (chat) =>  StreamBuilder(
                  stream: chat.chattingWith.reference.snapshots(),
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      final user=UserDto.fromFirestore(snapshot.data).toDomain();
                      return Text(
                          user.isOnline?AppLocale.online.getString(context):MyDateUtil.getLastActiveTime(
                              context: context,
                              lastActive:user.lastActive),
                          style: const TextStyle(
                              fontSize: 13, color: Colors.white));
                    }else{
                      return const SizedBox();
                    }

                  }
              ),)

            ],
          )
        ],),
          // appBarTitle: Text(projectOrChat.fold(
          //     (project) => project.projectName.getOrCrash(),
          //     (chat) => chat.chattingWith.userName.getOrCrash())) ,
          body: Column(
            children: [
              projectOrChat.fold((initialProject) {
                return Expanded(
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
                                        ChatDateDividerCard(
                                            date: messages[index].date.toDate())
                                      ],
                                      MessageTile(
                                        messageChat: messages[index],
                                        isDirectMessage: false,
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
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0),
                                            child: ChatDateDividerCard(
                                                date: messages[index]
                                                    .date
                                                    .toDate())),
                                      ],
                                    );
                                  }
                                  return const SizedBox();
                                },
                                //controller: listScrollController,
                              );
                            } else {
                              return  NoResultCard(
                                  AppLocale.noMessagesYet.getString(context), Icons.message_outlined);
                            }
                          },
                          loadFailure: (state) {
                            return SizedBox();
                          });
                    },
                  ),
                );
              }, (initialChat) {
                return Expanded(
                  child: BlocBuilder<ChatWatcherCubit, ChatWatcherState>(
                    builder: (context, state) {
                      return state.map(
                          initial: (_) => const SizedBox(),
                          loadInProgress: (_) =>
                              const Center(child: CircularProgressIndicator()),
                          loadSuccess: (state) {
                            final chat = state.chats.firstWhere(
                                (chat) =>
                                    chat.documentReference.path ==
                                    initialChat.documentReference.path,
                                orElse: () => initialChat);
                            context.read<ChatFormBloc>().add(ChatFormEvent.markDirectMessageAsHasRead(chat));
                            final messages = chat.messages.reversed.toList();
                            if (messages.isNotEmpty) {
                              return ListView.separated(
                                padding: const EdgeInsets.all(10),
                                reverse: true,
                                itemBuilder: (context, index) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      if (index == messages.length - 1) ...[
                                        ChatDateDividerCard(
                                            date: messages[index].date.toDate())
                                      ],
                                      MessageTile(
                                        messageChat: messages[index],
                                        isDirectMessage: true,
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
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0),
                                            child: ChatDateDividerCard(
                                                date: messages[index]
                                                    .date
                                                    .toDate())),
                                      ],
                                    );
                                  }
                                  return const SizedBox();
                                },
                                //controller: listScrollController,
                              );
                            } else {
                              return  NoResultCard(
                                  AppLocale.noMessagesYet.getString(context), Icons.message_outlined);
                            }
                          },
                          loadFailure: (state) {
                            return SizedBox();
                          });
                    },
                  ),
                );
              }),
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
                          focusNode: _focus,
                          onChanged: (text) {
                            context
                                .read<ChatFormBloc>()
                                .add(ChatFormEvent.messageContentChanged(text));
                          },
                          onSubmitted: (text) {
                            _sendMessage(context,_controller,_focus,projectOrChat);
                          },
                          controller: _controller,
                          style: Theme.of(context).textTheme.bodyText1,
                          decoration:  InputDecoration.collapsed(
                            hintText: AppLocale.typeYourMessage.getString(context),
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
                            _sendMessage(context,_controller,_focus,projectOrChat);
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

  void _sendMessage(BuildContext context,TextEditingController controller,FocusNode focusNode,Either<Project,Chat> projectOrChat) {
    projectOrChat.fold((project) =>  context
        .read<ChatFormBloc>()
        .add(ChatFormEvent.sendProjectMessage(project)), (chat) => context
        .read<ChatFormBloc>()
        .add(ChatFormEvent.sendDirectMessage(chat)));

    controller.clear();
    focusNode.unfocus();
  }
}
