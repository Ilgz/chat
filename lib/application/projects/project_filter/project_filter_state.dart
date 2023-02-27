part of 'project_filter_bloc.dart';

@freezed
class ProjectFilterState with _$ProjectFilterState{
   factory ProjectFilterState(ProjectFilterType type)=_ProjectFilterState;
  factory ProjectFilterState.initial() => ProjectFilterState(ProjectFilterType.all
  );
}

//class ProjectFilterInitial extends ProjectFilterState {}
