import 'package:chat/domain/chat/chat.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:chat/presentation/core/utils/my_date_util.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class DirectChatTile extends StatelessWidget {
  const DirectChatTile({Key? key, required this.chat}) : super(key: key);
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        goToChatPage(context, right(chat));
      },
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade400,
        child: const Icon(Icons.person, color: Colors.white),
      ),
      title: Text(
        chat.chattingWith.userName.getOrCrash(),
        style: Theme.of(context).textTheme.bodyText1,
      ),
      subtitle: () {
        final lastMessage =
            chat.messages.isNotEmpty ? chat.messages.last : null;
        return lastMessage == null
            ? null
            : Text(
                lastMessage.messageContent.getOrCrash(),
                maxLines: 1,
                style: Theme.of(context).textTheme.caption,
                overflow: TextOverflow.ellipsis,
              );
      }(),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            chat.messages.isEmpty
                ? MyDateUtil.getLastMessageTime(
                    context: context, timestamp: chat.date)
                : MyDateUtil.getLastMessageTime(
                    context: context, timestamp: chat.messages.last.date),
            style: Theme.of(context).textTheme.caption,
          ),
          if (chat.unreadMessages > 0) ...[
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 10,
              child: Text(
                chat.unreadMessages.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              backgroundColor: Colors.green,
            )
          ]
        ],
      ),
    );
  }
}
