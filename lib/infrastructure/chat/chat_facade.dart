import 'package:chat/domain/auth/i_auth_facade.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:chat/domain/chat/i_chat_facade.dart';
import 'package:chat/domain/chat/message_chat.dart';
import 'package:chat/domain/core/errors.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/infrastructure/chat/chat_dto.dart';
import 'package:chat/infrastructure/chat/message_chat_dto.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';
import 'package:chat/infrastructure/users/user_dto.dart';
import 'package:chat/injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IChatFacade)
class ChatFacade implements IChatFacade {
  final FirebaseFirestore _firebaseFirestore;
  final IAuthFacade _authFacade;

  ChatFacade(this._firebaseFirestore, this._authFacade);

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> sendProjectMessage(
      Project project, MessageChat messageChat) async {
    try {
      final userOption = getIt<IAuthFacade>().getSignedInUserId();
      final userId =
          "users/${userOption.getOrElse(() => throw NotAuthenticatedError())}";
      await project.reference.update({
        "messages": FieldValue.arrayUnion([
          MessageChatDto.fromDomain(messageChat.copyWith(
                  date: Timestamp.now(),
                  sentFrom: messageChat.sentFrom.copyWith(
                      reference: FirebaseFirestore.instance.doc(userId))))
              .toJson()
        ])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FirebaseFirestoreFailure, List<Chat>>> watchChatRooms() async* {
    final userOption = _authFacade.getSignedInUserId();
    final userId =
        "users/${userOption.getOrElse(() => throw NotAuthenticatedError())}";
    Stream<Either<FirebaseFirestoreFailure, List<ChatDto>>> dtoStream =
        _firebaseFirestore.chatCollection
            .where("members", arrayContains: _firebaseFirestore.doc(userId))
            .snapshots()
            .map((projects) => right<FirebaseFirestoreFailure, List<ChatDto>>(
                    projects.docs.map((querySnapshot) {
                  return ChatDto.fromFirestore(querySnapshot);

                }).toList()));
    await for (final dtoChat in dtoStream) {
      final a = await Future.wait((await Future.wait(dtoChat
              .getOrElse(() => [])
              .map((chatDto) async => await toDomain(chatDto))))
          .map((chat) async => chat.copyWith(
              messages: await getUsersForMessages(
                  chat.copyWith(messages: setMessagesInColumn(chat)))))
          .toList());
      yield right(a);
    }
  }

  List<MessageChat> setMessagesInColumn(Chat chat) {
    List<MessageChat> list = [];
    final messages = chat.messages;
    final userOption = _authFacade.getSignedInUserId();
    final uid = userOption.getOrElse(() => throw NotAuthenticatedError());
    if (messages.isNotEmpty) {
      for (int i = 0; i < messages.length - 1; i++) {
        list.add(messages[i].copyWith(
            isLastMessageInColumn:
                messages[i + 1].sentFrom != messages[i].sentFrom));
      }
      list.add(messages.last);
      list = list
          .map((message) =>
              message.copyWith(sentByMe: message.sentFrom.reference.id == uid))
          .toList();
    }
    return list;
  }

  Future<Chat> toDomain(ChatDto chatDto) async {
    User chattingWith = await getChattingWithFromReference(
        _authFacade
            .getSignedInUserId()
            .getOrElse(() => throw NotAuthenticatedError()),
        chatDto.members);
    final chat = chatDto.toDomain(chattingWith);
    return chat;
  }

  Future<List<MessageChat>> getUsersForMessages(Chat chat) async {
    if (chat.messages.isEmpty) {
      return [];
    }
    try {
      final messages = await Future.wait(chat.messages
          .map((message) async => message.copyWith(
              sentFrom:
                  UserDto.fromFirestore(await message.sentFrom.reference.get())
                      .toDomain()))
          .toList());
      return messages;
    } catch (e) {
      return [];
    }
  }

  Future<User> getChattingWithFromReference(
      String userId, List<DocumentReference> members) async {
    final userRef =
        members.firstWhere((userReference) => userReference.path != userId);
    final user = UserDto.fromFirestore((await userRef.get())).toDomain();
    return user;
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> sendDirectMessage(Chat chat, MessageChat messageChat) async{
    try {
      final userOption = getIt<IAuthFacade>().getSignedInUserId();
      final userReference =
          _firebaseFirestore.doc("users/${userOption.getOrElse(() => throw NotAuthenticatedError())}");
      if(chat.messages.isEmpty){
      }
     await ((chat.messages.isEmpty?(await _firebaseFirestore.chatCollection.add(ChatDto.fromDomain(chat,[chat.chattingWith.reference,userReference]).toJson())
      ):chat.documentReference).update({
        "messages": FieldValue.arrayUnion([
          MessageChatDto.fromDomain(messageChat.copyWith(
              date: Timestamp.now(),
              sentFrom: messageChat.sentFrom.copyWith(
                  reference: userReference)))
              .toJson()
        ])
      }));
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }
}
