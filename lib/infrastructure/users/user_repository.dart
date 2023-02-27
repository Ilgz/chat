import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:chat/domain/core/errors.dart';
import 'package:chat/domain/users/i_user_repository.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/domain/users/user_failure.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';
import 'package:chat/infrastructure/users/user_dto.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;
  UserRepository(this._firebaseFirestore, this._firebaseAuth);

  @override
  Stream<Either<UserFailure, List<User>>> watchAllUsers() async* {
    final userOption = optionOf(_firebaseAuth.currentUser?.email);
    final userEmail = userOption.getOrElse(() => throw NotAuthenticatedError());
    yield* _firebaseFirestore.userCollection.where("email",
        isNotEqualTo: userEmail).
        snapshots()
        .map((users) => right(users.docs.map((user) => UserDto.fromFirestore(user).toDomain()).toList()));
  }
}
