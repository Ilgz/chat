part of 'chat_searcher_cubit.dart';


@freezed
class ChatSearcherState with _$ChatSearcherState {
  factory ChatSearcherState.initial()=>const ChatSearcherState([],[],"");
  const factory ChatSearcherState(List<Chat> initialChats,List<Chat> queriedChats,String query)= _ChatSearcherState;
}
