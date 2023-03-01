import 'package:chat/domain/chat/chat.dart';
import 'package:dartz/dartz.dart';
import 'package:chat/domain/chat/message_chat.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/project_failure.dart';

abstract class IChatFacade{
  Future<Either<FirebaseFirestoreFailure, Unit>> sendProjectMessage(Project project,MessageChat messageChat);
  Future<Either<FirebaseFirestoreFailure, Unit>> sendDirectMessage(Chat chat,MessageChat messageChat);
  Stream<Either<FirebaseFirestoreFailure,List<Chat>>> watchChatRooms();

}