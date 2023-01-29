import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';

part 'home_checklist_bloc.freezed.dart';
part 'home_checklist_event.dart';
part 'home_checklist_state.dart';

class HomeChecklistBloc extends Bloc<HomeChecklistEvent, HomeChecklistState> {
  HomeChecklistBloc({
    required this.apiTaskRepository,
  }) : super(const HomeChecklistState.initial()) {
    on<HomeChecklistEvent>(
      (event, emit) => event.map(
          started: (event) => _onChecklistLoaded(event, emit),
          checkItem: (event) => _onCheckItem(event, emit)),
    );
  }

  final ApiTaskRepository apiTaskRepository;

  final List<ITaskRead> _tasks = [];

  FutureOr<void> _onChecklistLoaded(
    _StartedEvent event,
    Emitter<HomeChecklistState> emit,
  ) async {
    _tasks.clear();
    emit(const HomeChecklistState.loading());
    try {
      final tasks = await apiTaskRepository.getCachedNotDoneTasks();
      if (tasks != null) {
        _tasks.addAll(tasks);
      }
      emit(HomeChecklistState.loaded(tasks: _tasks));
    } on DioError catch (dioError) {
      emit(HomeChecklistState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onCheckItem(
    _CheckItemEvent event,
    Emitter<HomeChecklistState> emit,
  ) async {
    try {
      final task = _tasks.firstWhere((task) => task.id == event.id);
      final bool isDone = task.done ?? false;

      final updatedTask = await apiTaskRepository.updateById(
        id: event.id,
        name: task.name,
        deadline: task.deadline,
        projectId: task.projectId,
        done: !isDone,
      );

      if (updatedTask != null) {
        final index = _tasks.indexWhere((task) => task.id == event.id);
        if (index > 0) {
          _tasks[index] = task.copyWith(done: !isDone);
        }
      }
    } on DioError catch (dioError) {
      emit(HomeChecklistState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }
}
