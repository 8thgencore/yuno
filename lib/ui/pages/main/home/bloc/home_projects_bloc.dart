import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';

part 'home_projects_bloc.freezed.dart';
part 'home_projects_event.dart';
part 'home_projects_state.dart';

class HomeProjectsBloc extends Bloc<HomeProjectsEvent, HomeProjectsState> {
  HomeProjectsBloc({
    required this.apiProjectRepository,
  }) : super(const HomeProjectsState.initial()) {
    on<HomeProjectsEvent>(
      (event, emit) => event.map(
        started: (event) => _onProjectsLoaded(event, emit),
      ),
    );
  }

  final ApiProjectRepository apiProjectRepository;

  List<IProjectWithUsers> _projects = [];

  FutureOr<void> _onProjectsLoaded(
    _StartedEvent event,
    Emitter<HomeProjectsState> emit,
  ) async {
    emit(const HomeProjectsState.loading());
    try {
      final projects = await apiProjectRepository.getProjects(size: 4);

      if (projects.isNotEmpty) {
        _projects = projects;
      }
      emit(HomeProjectsState.loaded(_projects));
    } on DioError catch (dioError) {
      emit(HomeProjectsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }
}
