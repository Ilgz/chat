part of 'chat_form_bloc.dart';

@freezed
abstract class ChatFormEvent with _$ChatFormEvent{
  factory ChatFormEvent.messageContentChanged(String messageContent)=_MessageContentChanged;
  factory ChatFormEvent.sendMessage(Project project)=_SendMessage;
}
