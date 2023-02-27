part of 'project_filter_bloc.dart';

@freezed
class ProjectFilterEvent with _$ProjectFilterEvent{
  const factory ProjectFilterEvent.changeFilter(ProjectFilterType type)=ChangeFilter;
}
