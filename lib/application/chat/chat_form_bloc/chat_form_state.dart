part of 'chat_form_bloc.dart';


@freezed
class ChatFormState with _$ChatFormState {
  factory ChatFormState.initial()=>ChatFormState(messageChat: MessageChat.empty(), sendMessageFailureSuccessOption: none(),);
  factory ChatFormState({required MessageChat messageChat,required Option<Either<FirebaseFirestoreFailure,Unit>> sendMessageFailureSuccessOption})= _ChatFormState;
}
