import 'package:dartz/dartz.dart';
import 'package:chat/domain/core/failures.dart';
import 'package:chat/domain/core/value_objects.dart';
import 'package:chat/domain/core/value_validators.dart';

class ProjectName extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String>  value;
  factory ProjectName(String input){
    return ProjectName._(validateStringNotEmpty(input).andThen(validateMaxStringLegth(input, 30)));
  }
  const ProjectName._(this.value);
}
class TaskName extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String>  value;
  factory TaskName(String input){
    return TaskName._(validateStringNotEmpty(input).andThen(validateMaxStringLegth(input, 30)));
  }
  const TaskName._(this.value);
}
