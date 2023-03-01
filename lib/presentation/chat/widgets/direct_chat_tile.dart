import 'package:chat/domain/chat/chat.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:intl/intl.dart';

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
      title: Text(chat.chattingWith.userName.getOrCrash(),style: Theme.of(context).textTheme.bodyText1,),
      subtitle: () {
        final lastMessage=chat.messages.isNotEmpty?chat.messages.last:null;
        return Text(
          lastMessage==null ? "Group was created" : "${lastMessage.sentByMe ? "You" :lastMessage.sentFrom.userName.getOrCrash()}: ${lastMessage.messageContent
              .getOrCrash()}", maxLines: 1,style: Theme.of(context).textTheme.caption, overflow: TextOverflow.ellipsis,);
      }(),
      trailing: Text(DateFormat.yMMMMd()
          .format(DateTime.fromMillisecondsSinceEpoch(chat.messages.isEmpty
          ? chat.date.millisecondsSinceEpoch
          : chat.messages.last.date.millisecondsSinceEpoch)),
        style: Theme.of(context).textTheme.caption,),
    );
  }
}
