
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/chat/i_chat_facade.dart';
import 'package:chat/domain/chat/message_chat.dart';
import 'package:chat/domain/chat/value_objects.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/project_failure.dart';

part 'chat_form_event.dart';
part 'chat_form_state.dart';
part 'chat_form_bloc.freezed.dart';
@injectable
class ChatFormBloc extends Bloc<ChatFormEvent, ChatFormState> {
  final IChatFacade _iChatFacade;
  ChatFormBloc(this._iChatFacade) : super(ChatFormState.initial()) {
    on<ChatFormEvent>((event, emit) async{
     await event.map(messageContentChanged: (e){
        emit(state.copyWith(messageChat: state.messageChat.copyWith(messageContent: MessageContent(e.messageContent)),sendMessageFailureSuccessOption: none()));
      }, sendMessage: (e)async {
      final isMessageValid=state.messageChat.messageContent.isValid();
      if(isMessageValid) {
      emit(state.copyWith(sendMessageFailureSuccessOption: some(
      (await _iChatFacade.sendMessageForProject(
      e.project, state.messageChat)))));
      }
      });
    });
  }
}
