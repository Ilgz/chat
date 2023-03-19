import 'package:chat/application/auth/profile_actor/profile_actor_cubit.dart';
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:chat/presentation/chat/widgets/direct_chat_list.dart';
import 'package:chat/presentation/chat/widgets/project_chat_list.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:chat/presentation/core/widgets/critical_failure_card.dart';
import 'package:chat/presentation/core/widgets/custom_progress_indicator.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class ChatsOverviewPage extends StatelessWidget {
  const ChatsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _registerAppLifecycleCallbacks(context);
    return CustomScaffold(
      hasBackButton: false,
      appBarTitle: Text(AppLocale.chat.getString(context)),
      actions: [
        IconButton(
            onPressed: () {
              goToChatSearchPage(context);
            },
            icon: const Icon(Icons.search)),
        IconButton(
            onPressed: () {
              goToProfilePage(context);
            },
            icon: const Icon(Icons.person)),
      ],
      isScrolling: true,
      body: Column(
        children:  [BlocBuilder<ChatWatcherCubit, ChatWatcherState>(
            builder: (context, state) {
              return state.map(
                  initial: (_) => const SizedBox(),
                  loadInProgress: (_) => const CustomProgressIndicator(),
                  loadSuccess: (state) {
                    final chats = state.chats;
                    return DirectChatList(chats: chats,);
                  },
                  loadFailure: (_) =>const CriticalFailureCard());
            }),  const ProjectChatList()],
      ),
    );
  }

  void _registerAppLifecycleCallbacks(BuildContext context) {
    SystemChannels.lifecycle.setMessageHandler((message) {
      if (message.toString().contains('resume')) {
        context.read<ProfileActorCubit>().updateActiveStatus(true);
      }
      if (message.toString().contains('pause')) {
        context.read<ProfileActorCubit>().updateActiveStatus(false);
      }
      return Future.value(message);
    });
  }
}
