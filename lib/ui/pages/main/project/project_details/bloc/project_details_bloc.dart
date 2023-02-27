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
    required this.projectRepository,
    required this.taskRepository,
    required this.userRepository,
  }) : super(const ProjectDetailsState.initial()) {
    on<ProjectDetailsEvent>(
      (event, emit) => event.map(
        started: (event) async => _onProjectLoaded(event, emit),
        checkedTask: (event) async => _onCheckedTask(event, emit),
        deletedTask: (event) async => _onDeletedTask(event, emit),
        update: (event) async => _onUpdatedProject(event, emit),
        delete: (event) async => _onDeletedProject(event, emit),
        join: (event) async => _onJoinProject(event, emit),
        leave: (event) async => _onLeaveProject(event, emit),
      ),
    );
  }

  final IUserRepository userRepository;
  final IProjectRepository projectRepository;
  final ITaskRepository taskRepository;

  IProjectWithUsersTasks? _project;
  String _projectId = '';
  final List<ITaskRead> _tasks = [];
  double _percentCompleted = 0;
  bool _isMember = false;
  bool _isOwner = false;

  FutureOr<void> _onProjectLoaded(
    _StartedEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    try {
      emit(const ProjectDetailsState.loading());
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
      final isDone = task.done ?? false;

      await taskRepository.updateById(
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
      await taskRepository.deleteById(id: event.id);
      _tasks.removeWhere((task) => task.id == event.id);

      emit(const ProjectDetailsState.keep());
      emit(
        ProjectDetailsState.loaded(
          project: _project!,
          tasks: _tasks,
          isMember: _isMember,
          isOwner: _isOwner,
        ),
      );
    } on DioError catch (dioError) {
      emit(ProjectDetailsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onUpdatedProject(
    _UpdateProjectEvent event,
    Emitter<ProjectDetailsState> emit,
  ) async {
    try {
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
      await projectRepository.deleteById(id: _projectId);
      await taskRepository.getNotDoneTasks();
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
      await projectRepository.joinProject(id: _projectId);
      // get new tasks list
      await taskRepository.getNotDoneTasks();
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
      await projectRepository.leaveProject(id: _projectId);
      // get new tasks list
      await taskRepository.getNotDoneTasks();
      await _getProjectInfo(emit);
    } on DioError catch (dioError) {
      emit(ProjectDetailsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  Future<void> _getProjectInfo(Emitter<ProjectDetailsState> emit) async {
    final project = await projectRepository.getById(id: _projectId);
    _project = project;

    _tasks
      ..clear()
      ..addAll(project.tasks ?? []);
    // Check user member is project
    final user = await userRepository.getCachedData();
    final users = project.users;
    if (user != null && users != null) {
      _isMember = users.where((u) => u.id == user.id).isNotEmpty;
      _isOwner = project.createdBy == user.id;
    }

    // get percent competed task
    if (_tasks.isNotEmpty) {
      _percentCompleted = _tasks.where((t) => t.done ?? false).length / _tasks.length;
    } else {
      _percentCompleted = 0;
    }
    _project = _project!.copyWith(percentCompleted: _percentCompleted);

    emit(
      ProjectDetailsState.loaded(
        project: _project!,
        tasks: _tasks,
        isMember: _isMember,
        isOwner: _isOwner,
      ),
    );
  }
}
