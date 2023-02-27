import 'package:dartz/dartz.dart';
import 'package:chat/domain/core/failures.dart';
import 'package:chat/domain/core/value_objects.dart';
import 'package:chat/domain/core/value_validators.dart';

class MessageContent extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String>  value;
  factory MessageContent(String input){
    return MessageContent._(validateStringNotEmpty(input));
  }
  const MessageContent._(this.value);
}

