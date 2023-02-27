part of 'project_form_bloc.dart';

@freezed
abstract class ProjectFormState with _$ProjectFormState{
  factory ProjectFormState({required Project project,AutovalidateMode? showErrorMessages,required bool isProcessing,required Option<Either<FirebaseFirestoreFailure,Unit>> projectFailureSuccessOption,required bool isEditing})= _ProjectInFormState;
  factory ProjectFormState.initial()=>ProjectFormState(project: Project.empty(), showErrorMessages: AutovalidateMode.disabled, isProcessing: false,projectFailureSuccessOption :none(),isEditing: false);
}

