import 'package:chat/application/chat/chat_searcher_bloc/chat_searcher_cubit.dart';
import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class ChatSearchBar extends StatelessWidget {
  const ChatSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatSearcherCubit, ChatSearcherState>(
      buildWhen: (p,c)=>false,
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: Center(
            child: TextField(
              autofocus: true,
              controller: TextEditingController(text: state.query),
              onChanged: (text) {
                context.read<ChatSearcherCubit>().searchChats(text);
              },
              style: TextStyle(color: Colors.white),
              decoration:  InputDecoration.collapsed(
                hintStyle: TextStyle(color: Colors.white70),
                hintText: AppLocale.search.getString(context),
              ),
            ),
          ),
        );
      },
    );
  }
}
