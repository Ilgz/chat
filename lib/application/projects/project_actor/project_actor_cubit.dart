import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/projects/i_project_repository.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/project_failure.dart';

import '../../../domain/users/user.dart';

part 'project_actor_state.dart';
part 'project_actor_cubit.freezed.dart';
@injectable
class ProjectActorCubit extends Cubit<ProjectActorState> {
  final IProjectRepository _projectRepository;
  ProjectActorCubit(this._projectRepository) : super(const ProjectActorState.initial());


  deleteProject(Project project)async{
    final failureOrSuccess =
    await _projectRepository.deleteProject(project);
    if(!isClosed){
      emit(failureOrSuccess.fold(
              (f) => ProjectActorState.deleteProjectFailure(f),
              (_) => state));
    }

  }
  quitProject(Project project)async{
    final failureOrSuccess =
    await _projectRepository.quitProject(project);
    if(!isClosed) {
      emit(failureOrSuccess.fold(
              (f) => ProjectActorState.quitProjectFailure(f),
              (_) => const ProjectActorState.quitProjectSuccess()));
    }
  }

  changePublicityStatus(Project project) async {
    emit(const ProjectActorState.loadingProgressState());
    final  failureOrSuccess =
        await _projectRepository.changePublicityStatus(project);
    emit(failureOrSuccess.fold(
            (f) => ProjectActorState.changePublicityStatusFailure(f),
            (_) => const ProjectActorState.changePublicityStatusSuccess()));
  }
  getUserProjects(User user)async{
    emit(const ProjectActorState.loadingProgressState());
    final failureOrSuccess =
        await _projectRepository.getUserProjects(user);
    emit(failureOrSuccess.fold(
            (f) => ProjectActorState.getUserProjectsFailure(f),
            (projects) => ProjectActorState.getUserProjectsSuccess(projects)));
  }
}
