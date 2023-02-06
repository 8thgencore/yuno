import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/api/project/models/paginated_data_i_project_with_users.dart';
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
        scrollAutoLoaded: (event) => _onProjectAutoLoaded(event, emit),
      ),
    );
  }

  final ApiProjectRepository apiProjectRepository;

  static const _size = 5;
  int _page = 1;
  int _pages = 1;
  List<IProjectWithUsers> _projects = [];
  bool _isSelf = false;
  bool _loading = false;

  FutureOr<void> _onProjectsLoaded(
    _StartedEvent event,
    Emitter<ProjectsListState> emit,
  ) async {
    if (event.isSelf) {
      _isSelf = true;
    }
    emit(const ProjectsListState.loading());
    await _loadProject(emit);
  }

  FutureOr<void> _onProjectsUpdated(
    _UpdatedEvent event,
    Emitter<ProjectsListState> emit,
  ) async {
    await _loadProject(emit);
  }

  FutureOr<void> _onProjectAutoLoaded(
    _ScrollAutoLoadedEvent event,
    Emitter<ProjectsListState> emit,
  ) async {
    if (_loading) {
      return;
    }
    if (_page < _pages) {
      _page += 1;
    } else {
      return;
    }
    emit(ProjectsListState.loaded(_projects, true));
    _loading = true;
    await _loadProject(emit);
    _loading = false;
  }

  FutureOr<void> _loadProject(
    Emitter<ProjectsListState> emit,
  ) async {
    try {
      PaginatedDataIProjectWithUsers projects;
      if (_isSelf) {
        projects = await apiProjectRepository.getMyProjects(page: _page, size: _size);
      } else {
        projects = await apiProjectRepository.getProjects(page: _page, size: _size);
      }
      if (projects != null) {
        _projects = [..._projects, ...projects.items];
        _pages = projects.pages;
      }
      emit(ProjectsListState.loaded(_projects, false));
    } on DioError catch (dioError) {
      emit(ProjectsListState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }
}
