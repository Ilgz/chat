part of 'chat_form_bloc.dart';

@freezed
abstract class ChatFormEvent with _$ChatFormEvent{
  factory ChatFormEvent.messageContentChanged(String messageContent)=_MessageContentChanged;
  factory ChatFormEvent.sendProjectMessage(Project project)=_SendProjectMessage;
  factory ChatFormEvent.markDirectMessageAsHasRead(Chat chat)=_MarkDirectMessageAsHasRead;
  factory ChatFormEvent.sendDirectMessage(Chat chat)=_SendDirectMessage;
}
