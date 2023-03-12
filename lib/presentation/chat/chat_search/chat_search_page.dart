import 'package:chat/application/chat/chat_combiner_bloc/chat_combiner_cubit.dart';
import 'package:chat/application/chat/chat_searcher_bloc/chat_searcher_cubit.dart';
import 'package:chat/application/users/user_watcher/user_watcher_bloc.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:chat/presentation/chat/chat_search/widgets/chat_search_bar.dart';
import 'package:chat/presentation/chat/widgets/direct_chat_list.dart';
import 'package:chat/presentation/chat/widgets/direct_chat_tile.dart';
import 'package:chat/presentation/core/widgets/critical_failure_card.dart';
import 'package:chat/presentation/core/widgets/custom_progress_indicator.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:chat/presentation/core/widgets/no_result_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class ChatSearchPage extends StatelessWidget {
  const ChatSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserWatcherBloc, UserWatcherState>(
      listener: (context, state) {},
      child: CustomScaffold(
          appBarTitle: const ChatSearchBar(),
          isScrolling: true,
          body: BlocBuilder<ChatCombinerCubit, ChatCombinerState>(
              builder: (context, state) {
            return state.map(
                initial: (_) => const SizedBox(),
                loadInProgress: (_) => const CustomProgressIndicator(),
                loadSuccess: (state) {
                  List<Chat> chats = state.chats.toList();
                  context.read<ChatSearcherCubit>().updateChats(chats);
                  return BlocBuilder<ChatSearcherCubit, ChatSearcherState>(
                    builder: (context, state) {
                      chats = state.queriedChats;
                      return DirectChatList(chats: chats);
                    },
                  );
                },
                loadFailure: (_) => const CriticalFailureCard());
          })),
    );
  }
}
