import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:chat/presentation/chat/widgets/direct_chat_tile.dart';
import 'package:chat/presentation/core/widgets/critical_failure_card.dart';
import 'package:chat/presentation/core/widgets/custom_progress_indicator.dart';
import 'package:chat/presentation/core/widgets/no_result_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

import 'error_chat_tile.dart';

class DirectChatList extends StatelessWidget {
  const DirectChatList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<ChatWatcherCubit, ChatWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => const SizedBox(),
              loadInProgress: (_) => const CustomProgressIndicator(),
              loadSuccess: (state) {
                final chats = state.chats;
                if (chats.isNotEmpty) {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: chats.length,
                      itemBuilder: (context, index) {
                        final chat = chats[index];
                        if (chat.failureOption.isSome()) {
                          return const ErrorChatTile();
                        } else {
                          return DirectChatTile(
                            chat: chat,
                          );
                        }
                      });
                } else {
                  return NoResultCard(
                      AppLocale.noChatFound.getString(context),
                      Icons.chat_outlined);
                }
              },
              loadFailure: (_) =>const CriticalFailureCard());
        });
  }
}
