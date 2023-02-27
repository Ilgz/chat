part of 'task_form_bloc.dart';


@freezed
abstract class TaskFormState with _$TaskFormState{
  factory TaskFormState({required Task task,AutovalidateMode? showErrorMessages,required bool isProcessing,required Option<Either<FirebaseFirestoreFailure,Unit>> projectFailureSuccessOption,required bool isEditing})= _TaskFormState;
  factory TaskFormState.initial()=>TaskFormState(task: Task.empty(), showErrorMessages: AutovalidateMode.disabled, isProcessing: false,projectFailureSuccessOption :none(),isEditing: false);
}
