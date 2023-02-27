import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/projects/i_project_repository.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:chat/domain/projects/value_objects.dart';

part 'project_form_bloc.freezed.dart';

part 'project_form_event.dart';

part 'project_form_state.dart';

@injectable
class ProjectFormBloc extends Bloc<ProjectFormEvent, ProjectFormState> {
  final IProjectRepository _projectRepository;
  ProjectFormBloc(this._projectRepository) : super(ProjectFormState.initial()) {
    on<ProjectFormEvent>((event, emit) async {
      await event.map(
          changeEditingState: (e) {
            emit(state.copyWith(isEditing: e.editingState));
          },
          initialized: (e) {
            emit(
              e.initialProjectOption.fold(
                () => state,
                (project) => state.copyWith(
                    project: project, isEditing: project.isNew),
              ),
            );
          },
          projectBodyChanged: (e) {
            emit(state.copyWith(
                project: state.project
                    .copyWith(projectName: ProjectName(e.projectBodyStr)),
                projectFailureSuccessOption: none()));
          },
          saveProject: (e) async {
            Either<FirebaseFirestoreFailure, Unit>? failureOrSuccess;
            if (state.project.failureOption.isNone()) {
              emit(state.copyWith(isProcessing: true,projectFailureSuccessOption: none()));
              failureOrSuccess = state.project.isNew
                  ? await _projectRepository.createProject(state.project)
                  : await _projectRepository.updateProject(state.project);
            }
            emit(
              state.copyWith(
                isProcessing: false,
                showErrorMessages: AutovalidateMode.always,
                projectFailureSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
         );
    });
  }
}
