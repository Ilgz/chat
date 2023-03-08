import 'package:chat/application/chat/chat_combiner_bloc/chat_combiner_cubit.dart';
import 'package:chat/application/chat/chat_searcher_bloc/chat_searcher_cubit.dart';
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:chat/presentation/chat/widgets/chat_searchbar.dart';
import 'package:chat/presentation/chat/widgets/direct_chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/presentation/chat/widgets/group_chat_tile.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:chat/presentation/core/widgets/no_result_card.dart';

class ChatSearchPage extends StatelessWidget {
  const ChatSearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: ChatSearchBar(),
      isScrolling: true,
      body: BlocBuilder<ChatCombinerCubit,ChatCombinerState>(builder: (context,state){
        return state.map(initial: (_)=>const SizedBox(), loadInProgress: (_)=>const Center(child: CircularProgressIndicator(),), loadSuccess: (state){
          List<Chat> chats = state.chats.toList();
          chats
              .sort((a, b) {
            final aTimeStamp=a.messages.isEmpty?a.date:a.messages.last.date;
            final bTimeStamp=b.messages.isEmpty?b.date:b.messages.last.date;
            return  bTimeStamp.compareTo(aTimeStamp);});
          if(chats.isNotEmpty){
           context.read<ChatSearcherCubit>().updateChats(chats);
            return BlocBuilder<ChatSearcherCubit, ChatSearcherState>(
  builder: (context, state) {
    chats=state.queriedChats;
    return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  if (chat.failureOption.isSome()) {
                    return const Card(
                      child: Text("Error"),
                    );
                  } else {
                    return DirectChatTile(chat: chat,);
                    //   return GroupChatCard(project: project);
                  }
                });
  },
);
          }else{
            return  const NoResultCard("No chat found", Icons.account_tree_outlined);
          }
        }, loadFailure: (_)=>const SizedBox());
      })
    );
  }
}