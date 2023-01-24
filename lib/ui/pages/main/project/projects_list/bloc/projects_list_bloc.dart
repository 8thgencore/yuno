import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';

part 'projects_list_bloc.freezed.dart';

part 'projects_list_event.dart';

part 'projects_list_state.dart';

class ProjectsListBloc extends Bloc<ProjectsListEvent, ProjectsListState> {
  ProjectsListBloc({
    required this.apiProjectRepository,
  }) : super(const ProjectsListState.initial()) {
    on<ProjectsListEvent>(
        (event, emit) => event.map(started: (event) => _onProjectsLoaded(event, emit)));
  }

  final ApiProjectRepository apiProjectRepository;

  List<IProjectWithUsers> _projects = [];

  FutureOr<void> _onProjectsLoaded(
    _StartedEvent event,
    Emitter<ProjectsListState> emit,
  ) async {
    emit(const ProjectsListState.loading());
    try {
      final projects = await apiProjectRepository.getProjects(size: 10);
      if (projects is List<IProjectWithUsers>) {
        if (projects.isNotEmpty) {
          _projects = projects;
        }
        emit(ProjectsListState.loaded(_projects));
      } else {
        emit(const ProjectsListState.failure('Wrong data from server'));
      }
    } on Exception catch (_) {
      emit(const ProjectsListState.failure("Don't get tasks"));
    }
  }
}
