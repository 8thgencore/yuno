import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models/i_project_with_users_tasks.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';

part 'project_details_bloc.freezed.dart';

part 'project_details_event.dart';

part 'project_details_state.dart';

class ProjectDetailsBloc extends Bloc<ProjectDetailsEvent, ProjectDetailsState> {
  ProjectDetailsBloc({
    required this.apiProjectRepository,
    required this.apiTaskRepository,
  }) : super(const ProjectDetailsState.initial()) {
    on<ProjectDetailsEvent>(
      (event, emit) => event.map(
        started: (event) => _onProjectLoaded(event, emit),
        checkedTask: (event) => _onCheckedTask(event, emit),
      ),
    );
  }

  final ApiProjectRepository apiProjectRepository;
  final ApiTaskRepository apiTaskRepository;

  final List<ITaskRead> _tasks = [];

  FutureOr<void> _onProjectLoaded(
    _StartedEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    emit(const ProjectDetailsState.loading());
    try {
      final project = await apiProjectRepository.getById(id: event.id);
      if (project is IProjectWithUsersTasks) {
        _tasks.addAll(project.tasks ?? []);
        emit(ProjectDetailsState.loaded(project: project, tasks: _tasks));
      } else {
        emit(const ProjectDetailsState.failure("Don't get project"));
      }
    } on Exception catch (_) {
      emit(const ProjectDetailsState.failure("Don't get project"));
    }
  }

  FutureOr<void> _onCheckedTask(
    _CheckTaskEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    final task = _tasks.firstWhere((task) => task.id == event.id);
    final bool isDone = task.done ?? false;

    final result = await apiTaskRepository.updateById(
      id: event.id,
      name: task.name,
      deadline: task.deadline,
      projectId: task.projectId,
      done: !isDone,
    );

    if (result is ITaskRead) {
      _tasks.removeWhere((task) => task.id == event.id);
      _tasks.add(task.copyWith(done: !isDone));
    }
  }
}
