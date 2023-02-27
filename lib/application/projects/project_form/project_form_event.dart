part of 'project_form_bloc.dart';
@freezed
abstract class ProjectFormEvent with _$ProjectFormEvent{
  factory ProjectFormEvent.projectBodyChanged(String projectBodyStr)=ProjectBodyChanged;
  factory ProjectFormEvent.changeEditingState(bool editingState)=ChangeEditingState;
  factory ProjectFormEvent.saveProject()=SaveProject;
  const factory ProjectFormEvent.initialized(Option<Project> initialProjectOption) =
  Initialized;
}
