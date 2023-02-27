
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/projects/i_project_repository.dart';
import 'package:chat/domain/projects/project_failure.dart';
import 'package:chat/domain/projects/task.dart';
import 'package:chat/domain/projects/value_objects.dart';

part 'task_form_event.dart';
part 'task_form_state.dart';
part 'task_form_bloc.freezed.dart';
@injectable
class TaskFormBloc extends Bloc<TaskFormEvent, TaskFormState> {
  final IProjectRepository _projectRepository;

  TaskFormBloc(this._projectRepository) : super(TaskFormState.initial()) {
    on<TaskFormEvent>((event, emit) async{
     await  event.map(taskBodyChanged: (e){
       emit(state.copyWith(
           task: state.task
               .copyWith(taskName: TaskName(e.taskBodyStr)),
           projectFailureSuccessOption: none()));
     }, changeEditingState: (e){
       emit(state.copyWith(isEditing: e.editingState));
     }, saveTask: (e)async{
       Either<FirebaseFirestoreFailure, Unit>? failureOrSuccess;
       if (state.task.failureOption.isNone()) {
         emit(state.copyWith(isProcessing: true,projectFailureSuccessOption: none()));
         failureOrSuccess = state.task.isNew
             ? await _projectRepository.createTask(state.task,e.documentReference)
           :await _projectRepository.updateTask(state.task,e.documentReference,e.initialTask);
       }
       emit(
       state.copyWith(
       isProcessing: false,
       showErrorMessages: AutovalidateMode.always,
       projectFailureSuccessOption: optionOf(failureOrSuccess),
       ),
       );
     }, initialized: (e){
       emit(
         e.initialProjectOption.fold(
               () => state,
               (task) => state.copyWith(
               task: task, isEditing: task.isNew ? true : false),
         ),
       );
     });
    });
  }
}
