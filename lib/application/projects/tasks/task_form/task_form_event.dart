part of 'task_form_bloc.dart';

@freezed
abstract class TaskFormEvent with _$TaskFormEvent{
  factory TaskFormEvent.taskBodyChanged(String taskBodyStr)=_TaskBodyChanged;
  factory TaskFormEvent.changeEditingState(bool editingState)=_ChangeEditingState;
  factory TaskFormEvent.saveTask(DocumentReference documentReference,Task initialTask)=_SaveTask;
  const factory TaskFormEvent.initialized(Option<Task> initialProjectOption) =
  _Initialized;
}

