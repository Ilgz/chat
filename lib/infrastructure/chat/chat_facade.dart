import 'package:chat/domain/chat/chat.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/auth/i_auth_facade.dart';
import 'package:chat/domain/chat/i_chat_facade.dart';
import 'package:chat/domain/chat/message_chat.dart';
import 'package:chat/domain/core/errors.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:chat/infrastructure/chat/message_chat_dto.dart';
import 'package:chat/injection.dart';
@LazySingleton(as: IChatFacade)
class ChatFacade implements IChatFacade{
  final FirebaseFirestore _firebaseFirestore;
  ChatFacade(this._firebaseFirestore);
  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> sendMessageForProject(Project project, MessageChat messageChat) async{
    try {
      final userOption = getIt<IAuthFacade>().getSignedInUserId();
      final userId =
          "users/${userOption.getOrElse(() => throw NotAuthenticatedError())}";
      await project.reference.update({
        "messages": FieldValue.arrayUnion([MessageChatDto.fromDomain(messageChat.copyWith(date:Timestamp.now(),sentFrom:messageChat.sentFrom.copyWith(reference:FirebaseFirestore.instance.doc(userId)))).toJson()])
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
  Stream<Either<FirebaseFirestoreFailure, List<Chat>>> getChatRooms() {
    throw Error();
  }




}