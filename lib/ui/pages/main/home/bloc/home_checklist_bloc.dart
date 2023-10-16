import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/task/models/i_task_with_project_name.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';

part 'home_checklist_bloc.freezed.dart';

part 'home_checklist_event.dart';

part 'home_checklist_state.dart';

class HomeChecklistBloc extends Bloc<HomeChecklistEvent, HomeChecklistState> {
  HomeChecklistBloc({
    required this.taskRepository,
  }) : super(const HomeChecklistState.initial()) {
    on<HomeChecklistEvent>(
      (event, emit) => event.map(
        started: (event) async => _onChecklistLoaded(event, emit),
        checkedItem: (event) async => _onCheckedItem(event, emit),
        deletedItem: (event) async => _onDeletedItem(event, emit),
      ),
    );
  }

  final ITaskRepository taskRepository;

  final List<ITaskWithProjectName> _tasks = [];

  FutureOr<void> _onChecklistLoaded(
    _StartedEvent event,
    Emitter<HomeChecklistState> emit,
  ) async {
    _tasks.clear();
    emit(const HomeChecklistState.loading());
    try {
      final tasks = await taskRepository.getCachedNotDoneTasks();
      if (tasks != null) {
        _tasks.addAll(tasks);
      }
      emit(HomeChecklistState.loaded(tasks: _tasks));
    } on DioException catch (dioError) {
      emit(HomeChecklistState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onCheckedItem(
    _CheckedItemEvent event,
    Emitter<HomeChecklistState> emit,
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
    } on DioException catch (dioError) {
      emit(HomeChecklistState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onDeletedItem(
    _DeletedItemEvent event,
    Emitter<HomeChecklistState> emit,
  ) async {
    try {
      await taskRepository.deleteById(id: event.id);
      _tasks.removeWhere((task) => task.id == event.id);

      emit(const HomeChecklistState.keep());
      emit(HomeChecklistState.loaded(tasks: _tasks));
    } on DioException catch (dioError) {
      emit(HomeChecklistState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }
}
