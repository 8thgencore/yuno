import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models/i_project_with_users_tasks.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';

part 'project_details_bloc.freezed.dart';

part 'project_details_event.dart';

part 'project_details_state.dart';

class ProjectDetailsBloc extends Bloc<ProjectDetailsEvent, ProjectDetailsState> {
  ProjectDetailsBloc({
    required this.apiProjectRepository,
    required this.apiTaskRepository,
    required this.apiUserRepository,
  }) : super(const ProjectDetailsState.initial()) {
    on<ProjectDetailsEvent>(
      (event, emit) => event.map(
        started: (event) => _onProjectLoaded(event, emit),
        checkedTask: (event) => _onCheckedTask(event, emit),
        deletedTask: (event) => _onDeletedTask(event, emit),
        update: (event) => _onUpdatedProject(event, emit),
        delete: (event) => _onDeletedProject(event, emit),
        join: (event) => _onJoinProject(event, emit),
        leave: (event) => _onLeaveProject(event, emit),
      ),
    );
  }

  final ApiUserRepository apiUserRepository;
  final ApiProjectRepository apiProjectRepository;
  final ApiTaskRepository apiTaskRepository;

  IProjectWithUsersTasks? _project;
  String _projectId = '';
  final List<ITaskRead> _tasks = [];
  bool _isMember = false;
  bool _isOwner = false;

  FutureOr<void> _onProjectLoaded(
    _StartedEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    try {
      _projectId = event.id;
      await _getProjectInfo(emit);
    } on DioError catch (dioError) {
      emit(ProjectDetailsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onCheckedTask(
    _CheckedTaskEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    try {
      final task = _tasks.firstWhere((task) => task.id == event.id);
      final bool isDone = task.done ?? false;

      await apiTaskRepository.updateById(
        id: event.id,
        name: task.name,
        deadline: task.deadline,
        projectId: task.projectId,
        done: !isDone,
      );

      final index = _tasks.indexWhere((task) => task.id == event.id);
      if (index >= 0) {
        _tasks[index] = task.copyWith(done: !isDone);
      }
    } on DioError catch (dioError) {
      emit(ProjectDetailsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onDeletedTask(
    _DeletedTaskEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    try {
      await apiTaskRepository.deleteById(id: event.id);
      _tasks.removeWhere((task) => task.id == event.id);

      emit(const ProjectDetailsState.keep());
      emit(ProjectDetailsState.loaded(
        project: _project!,
        tasks: _tasks,
        isMember: _isMember,
        isOwner: _isOwner,
      ));
    } on DioError catch (dioError) {
      emit(ProjectDetailsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onUpdatedProject(
    _UpdateProjectEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    try {
      _tasks.clear();
      await _getProjectInfo(emit);
    } on DioError catch (dioError) {
      emit(ProjectDetailsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onDeletedProject(
    _DeleteProjectEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    try {
      await apiProjectRepository.deleteById(id: _projectId);
      await apiTaskRepository.getNotDoneTasks();
      emit(const ProjectDetailsState.deleted());
    } on DioError catch (dioError) {
      emit(ProjectDetailsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onJoinProject(
    _JoinProjectEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    try {
      _tasks.clear();
      await apiProjectRepository.joinProject(id: _projectId);
      // get new tasks list
      await apiTaskRepository.getNotDoneTasks();
      await _getProjectInfo(emit);
    } on DioError catch (dioError) {
      emit(ProjectDetailsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onLeaveProject(
    _LeaveProjectEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    try {
      _tasks.clear();
      await apiProjectRepository.leaveProject(id: _projectId);
      // get new tasks list
      await apiTaskRepository.getNotDoneTasks();
      await _getProjectInfo(emit);
    } on DioError catch (dioError) {
      emit(ProjectDetailsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  Future<void> _getProjectInfo(Emitter<ProjectDetailsState> emit) async {
    final project = await apiProjectRepository.getById(id: _projectId);
    _project = project;

    _tasks.addAll(project.tasks ?? []);
    // Check user member is project
    final user = await apiUserRepository.getCachedData();
    final users = project.users;
    if (user != null && users != null) {
      _isMember = users.where((u) => u.id == user.id).isNotEmpty;
      _isOwner = project.createdBy == user.id;
    }
    emit(ProjectDetailsState.loaded(
      project: project,
      tasks: _tasks,
      isMember: _isMember,
      isOwner: _isOwner,
    ));
  }
}
