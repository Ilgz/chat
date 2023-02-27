import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';
@freezed
abstract class  ValueFailure<T> with _$ValueFailure<T>{
  factory ValueFailure.exceedingLength({required T failedValue,required int max})=ExceedingLength<T>;
  factory ValueFailure.shortLength({required T failedValue,required int min})=ShortLength<T>;
  factory ValueFailure.empty({required T failedValue})=Empty<T>;
  factory ValueFailure.multiLine({required T failedValue})=Multiline<T>;
  factory ValueFailure.listTooLong({required T failedValue,required int max})=ListTooLong<T>;
  factory ValueFailure.invalidEmail({
    required T failedValue
  })=InvalidEmail<T>;
  factory ValueFailure.passwordsDoNotMatch({
    required T failedValue
  })=PasswordsDoNotMatch<T>;
  factory ValueFailure.shortPassword({
    required T failedValue
  })=ShortPassword<T>;
}
