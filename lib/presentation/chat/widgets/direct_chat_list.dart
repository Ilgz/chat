import 'package:chat/domain/chat/chat.dart';
import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:chat/presentation/chat/widgets/direct_chat_tile.dart';
import 'package:chat/presentation/core/widgets/no_result_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import 'error_chat_tile.dart';

class DirectChatList extends StatelessWidget {
  const DirectChatList({Key? key, required this.chats}) : super(key: key);
  final List<Chat> chats;

  @override
  Widget build(BuildContext context) {
    return chats.isNotEmpty
        ? ListView.builder(
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
            })
        : NoResultCard(
            AppLocale.noChatFound.getString(context), Icons.chat_outlined);
  }
}
