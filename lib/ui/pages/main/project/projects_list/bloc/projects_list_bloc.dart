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
    required this.projectRepository,
  }) : super(const ProjectsListState.initial()) {
    on<ProjectsListEvent>(
      (event, emit) => event.map(
        started: (event) async => _onProjectsLoaded(event, emit),
        updated: (event) async => _onProjectsUpdated(event, emit),
        nextLoaded: (event) async => _onProjectNextLoaded(event, emit),
        autoLoaded: (event) async => _onProjectAutoLoaded(event, emit),
      ),
    );
  }

  final IProjectRepository projectRepository;

  static const _size = 4;
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

  FutureOr<void> _onProjectNextLoaded(
    _NextLoadedEvent event,
    Emitter<ProjectsListState> emit,
  ) async {
    if (_loading) {
      return;
    }
    emit(ProjectsListState.loaded(projects: _projects, isShowLoading: true, isShowError: false));
    _loading = true;
    await _loadProject(emit);
    _loading = false;
  }

  FutureOr<void> _onProjectAutoLoaded(
    _AutoLoadedEvent event,
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
    emit(ProjectsListState.loaded(projects: _projects, isShowLoading: true, isShowError: false));
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
        projects = await projectRepository.getMyProjects(page: _page, size: _size);
      } else {
        projects = await projectRepository.getProjects(page: _page, size: _size);
      }

      _projects = [..._projects, ...projects.items];
      _pages = projects.pages;
      emit(ProjectsListState.loaded(projects: _projects, isShowLoading: false, isShowError: false));
    } on DioError catch (_) {
      emit(ProjectsListState.loaded(projects: _projects, isShowLoading: false, isShowError: true));
    }
  }
}
