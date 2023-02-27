import 'package:flutter/material.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:intl/intl.dart';

class GroupChatCard extends StatelessWidget {

  const GroupChatCard({Key? key, required this.project}) : super(key: key);
  final Project project;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        goToChatPage(context, project);
      },
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade400,
        child: const Icon(Icons.group, color: Colors.white),
      ),
      title: Text(project.projectName.getOrCrash(),style: Theme.of(context).textTheme.bodyText1,),
      subtitle: () {
        final lastMessage=project.messages.isNotEmpty?project.messages.last:null;
        return Text(
          lastMessage==null ? "Group was created" : "${lastMessage.sentByMe ? "You" :lastMessage.sentFrom.userName.getOrCrash()}: ${lastMessage.messageContent
              .getOrCrash()}", maxLines: 1,style: Theme.of(context).textTheme.caption, overflow: TextOverflow.ellipsis,);
      }(),
      trailing: Text(DateFormat.yMMMMd()
          .format(DateTime.fromMillisecondsSinceEpoch(project.messages.isEmpty
          ? project.date.millisecondsSinceEpoch
          : project.messages.last.date.millisecondsSinceEpoch)),
        style: Theme.of(context).textTheme.caption,),
    );
  }
}
