import 'package:bloc/bloc.dart';
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/application/users/user_watcher/user_watcher_bloc.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:chat/domain/users/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'chat_searcher_cubit.freezed.dart';
part 'chat_searcher_state.dart';
@injectable
class ChatSearcherCubit extends Cubit<ChatSearcherState> {
  final ChatWatcherCubit _chatWatcherCubit;
  final UserWatcherBloc _userWatcherBloc;

  ChatSearcherCubit(this._chatWatcherCubit, this._userWatcherBloc)
      : super(const ChatSearcherState.initial());
  void watchSearchChats() {

    final Stream<List<Chat>> stream =
    Rx.combineLatest2(_userWatcherBloc.stream, _chatWatcherCubit.stream,
            (userState, chatState) {
          late List<User> users;
          late List<Chat> chats;
          if (userState is UsersLoadSuccess) {
            users = userState.users;
          } else {
            users = [];
          }
          if (chatState is ChatsLoadSuccess) {
            chats = chatState.chats;
          } else {
            chats = [];
          }
          final userChats = users
              .map((user) => Chat.empty().copyWith(chattingWith: user))
              .toList();
          return List.from(chats)..addAll(userChats.where((userChat) => !chats
              .map((chat) => chat.chattingWith)
              .toList()
              .contains(userChat.chattingWith)));
        });
    stream.listen((event) {
      print(event.map((e) => e.chattingWith.userName.getOrCrash()));
      print(event.map((e) => e.messages.length));
      // add(ReceiveAllCombined(event));
    });
  }
}
