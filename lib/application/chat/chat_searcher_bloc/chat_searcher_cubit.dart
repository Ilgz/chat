import 'package:bloc/bloc.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_searcher_state.dart';

part 'chat_searcher_cubit.freezed.dart';
@injectable
class ChatSearcherCubit extends Cubit<ChatSearcherState> {
  ChatSearcherCubit() : super(ChatSearcherState.initial());
  void searchChats(String query) {
    emit(state.copyWith(queriedChats: state.initialChats.where((chat) =>
        chat.chattingWith.userName.getOrCrash().toLowerCase().contains(query.toLowerCase())).toList(),query:query));
  }
  void updateChats(List<Chat> chats){
    emit(state.copyWith(initialChats: chats));
    searchChats(state.query);
  }
}
