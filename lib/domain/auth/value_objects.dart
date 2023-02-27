import 'package:dartz/dartz.dart';
import 'package:chat/domain/core/failures.dart';
import 'package:chat/domain/core/value_objects.dart';
import 'package:chat/domain/core/value_validators.dart';
class EmailAddress extends ValueObject<String> {
@override
  final Either<ValueFailure<String>,String> value;
  factory EmailAddress(String input){
    return EmailAddress._(validateEmailAddress(input));
  }
  const EmailAddress._(this.value);
}
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>,String> value;
  factory Password(String input){
    return Password._(validatePassword(input));
  }
  const Password._(this.value);
}
class ConfirmationPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>,String> value;
  factory ConfirmationPassword(String input,Password password){
    return ConfirmationPassword._(validateConfirmationPassword(input,password));
  }
  const ConfirmationPassword._(this.value);
}
class UserName extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>,String> value;
  factory UserName(String input){
    return UserName._(validateStringNotEmpty(input).andThen(validateMaxStringLegth(input, 15)).andThen(validateMinStringLength(input, 3)));
  }
  const UserName._(this.value);
}