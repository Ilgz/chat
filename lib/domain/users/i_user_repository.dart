import 'package:dartz/dartz.dart' hide Task;
import 'package:chat/domain/users/user.dart';
import 'package:chat/domain/users/user_failure.dart';

abstract class IUserRepository {
  Stream<Either<UserFailure, List<User>>> watchAllUsers();
}
