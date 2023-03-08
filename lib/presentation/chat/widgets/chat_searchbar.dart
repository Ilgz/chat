import 'package:chat/application/chat/chat_searcher_bloc/chat_searcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatSearchBar extends StatelessWidget {
  const ChatSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Center(
        child: TextField(
          onChanged: (text){
            context.read<ChatSearcherCubit>().searchChats(text);
          },
          style: TextStyle(color: Colors.white),
          decoration: const InputDecoration.collapsed(
            hintStyle: TextStyle(color: Colors.white70),
            hintText: 'Search for something',

          ),
        ),
      ),
    );
  }
}
