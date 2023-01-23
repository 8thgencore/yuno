import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';

part 'home_projects_event.dart';

part 'home_projects_state.dart';

part 'home_projects_bloc.freezed.dart';

class HomeProjectsBloc extends Bloc<HomeProjectsEvent, HomeProjectsState> {
  HomeProjectsBloc({
    required this.apiProjectRepository,
  }) : super(const HomeProjectsState.initial()) {
    on<HomeProjectsEvent>(
        (event, emit) => event.map(started: (event) => _onProjectsLoaded(event, emit)));
  }

  final ApiProjectRepository apiProjectRepository;

  List<IProjectWithUsers> _projects = [];

  FutureOr<void> _onProjectsLoaded(
    _StartedEvent event,
    Emitter<HomeProjectsState> emit,
  ) async {
    emit(const HomeProjectsState.loading());
    try {
      final projects = await apiProjectRepository.getMyProjects();
      if (projects is List<IProjectWithUsers>) {
        if (projects.isNotEmpty) {
          _projects = projects;
        }
        emit(HomeProjectsState.loaded(projects: _projects));
      } else {
        emit(const HomeProjectsState.failure('Wrong data from server'));
      }
    } on Exception catch (_) {
      emit(const HomeProjectsState.failure("Don't get tasks"));
    }
  }
}
