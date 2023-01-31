import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';

part 'projects_list_bloc.freezed.dart';
part 'projects_list_event.dart';
part 'projects_list_state.dart';

class ProjectsListBloc extends Bloc<ProjectsListEvent, ProjectsListState> {
  ProjectsListBloc({
    required this.apiProjectRepository,
  }) : super(const ProjectsListState.initial()) {
    on<ProjectsListEvent>(
      (event, emit) => event.map(
        started: (event) => _onProjectsLoaded(event, emit),
        updated: (event) => _onProjectsUpdated(event, emit),
      ),
    );
  }

  final ApiProjectRepository apiProjectRepository;

  List<IProjectWithUsers> _projects = [];
  bool _isSelf = false;

  FutureOr<void> _onProjectsLoaded(
    _StartedEvent event,
    Emitter<ProjectsListState> emit,
  ) async {
    emit(const ProjectsListState.loading());
    try {
      if (event.isSelf) {
        _isSelf = true;
        final projects = await apiProjectRepository.getMyProjects(size: 10);
        if (projects != null) {
          _projects = projects;
          emit(ProjectsListState.loaded(_projects));
        }
      } else {
        final projects = await apiProjectRepository.getProjects(size: 10);
        if (projects != null) {
          _projects = projects;
          emit(ProjectsListState.loaded(_projects));
        }
      }
    } on DioError catch (dioError) {
      emit(ProjectsListState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onProjectsUpdated(
    _UpdatedEvent event,
    Emitter<ProjectsListState> emit,
  ) async {
    try {
      if (_isSelf) {
        final projects = await apiProjectRepository.getMyProjects(size: 10);
        if (projects != null) {
          _projects = projects;
          emit(ProjectsListState.loaded(_projects));
        }
      } else {
        final projects = await apiProjectRepository.getProjects(size: 10);
        if (projects != null) {
          _projects = projects;
          emit(ProjectsListState.loaded(_projects));
        }
      }
    } on DioError catch (dioError) {
      emit(ProjectsListState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }
}
