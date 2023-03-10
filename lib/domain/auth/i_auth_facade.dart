import 'package:chat/domain/projects/project_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:chat/domain/auth/auth_failure.dart';
import 'package:chat/domain/auth/value_objects.dart';
import 'package:chat/domain/users/user.dart';

abstract class IAuthFacade{
  Future<Either<FirebaseFirestoreFailure, Unit>> updateActiveStatus(bool isOnline);
  Future<User> getSignedInUser();
  Option<String> getSignedInUserId();
  Future<String> getFcmToken();
  Future<Either<AuthFailure,Unit>> registerWithEmailAndPassword({required UserName userName,required EmailAddress emailAddress,required Password password});
  Future<Either<AuthFailure,Unit>> signInWithEmailAndPassword({required EmailAddress emailAddress,required Password password});
  Future<void> signOut();
}