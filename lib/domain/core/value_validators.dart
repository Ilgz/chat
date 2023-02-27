import 'package:dartz/dartz.dart';
import 'package:chat/domain/auth/value_objects.dart';
import 'package:chat/domain/core/failures.dart';
Either<ValueFailure<String>,String> validateMaxStringLegth(String input,int maxLength){
  if(input.length<=maxLength){
    return right(input);
  }else{
    return left(ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}
Either<ValueFailure<String>,String> validateMinStringLength(String input,int minLength){
  if(input.length>=minLength){
    return right(input);
  }else{
    return left(ValueFailure.shortLength(failedValue: input, min: minLength));
  }
}
Either<ValueFailure<String>, String> validateStringNotEmpty(String input){
if(input.trim().isNotEmpty){
  return right(input);
}else{
  return left(ValueFailure.empty(failedValue: input));
}
}
Either<ValueFailure<String>, String> validateSingleLine(String input) {
if(!input.contains("\n")){
return right(input);
}else{
  return left(ValueFailure.multiLine(failedValue: input));
}
}

// Either<ValueFailure<KtList<T>>,KtList<T>> validateMaxListLength<T>(KtList<T> input,int maxLength) {
//  if(input.size<=maxLength){
//    return right(input);
//  }else{
//    return left(ValueFailure.listTooLong(failedValue: input,max:maxLength));
//  }
// }
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}
Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length>=6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
Either<ValueFailure<String>, String> validateConfirmationPassword(String input,Password password) {
  return password.value.fold((_) => right(""), (password) => input==password?right(input):left(ValueFailure.passwordsDoNotMatch(failedValue: input)));

}