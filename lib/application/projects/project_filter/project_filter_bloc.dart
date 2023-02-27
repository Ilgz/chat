
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/presentation/core/enums.dart';
part 'project_filter_bloc.freezed.dart';
part 'project_filter_event.dart';
part 'project_filter_state.dart';
@injectable
class ProjectFilterBloc extends Bloc<ProjectFilterEvent, ProjectFilterState> {
  ProjectFilterBloc() : super(ProjectFilterState.initial()) {
    on<ProjectFilterEvent>((event, emit) {
      event.map(changeFilter: (e)=>emit(state.copyWith(type: e.type)));
    });
  }
}
