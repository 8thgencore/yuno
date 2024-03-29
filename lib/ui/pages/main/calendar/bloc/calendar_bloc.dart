import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/task/models/i_task_with_project_name.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';

part 'calendar_event.dart';

part 'calendar_state.dart';

part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc({
    required this.taskRepository,
  }) : super(const CalendarState.initial()) {
    on<CalendarEvent>(
      (event, emit) => event.map(
        started: (event) async => _onChecklistLoaded(event, emit),
        updated: (event) async => _onChecklistUpdated(event, emit),
        selectedDate: (event) async => _onSelectedDateItem(event, emit),
        checkedItem: (event) async => _onCheckedItem(event, emit),
      ),
    );
  }

  final ITaskRepository taskRepository;

  List<ITaskWithProjectName> _tasks = [];

  DateTime _date = DateTime.now();

  FutureOr<void> _onChecklistLoaded(
    _StartedEvent event,
    Emitter<CalendarState> emit,
  ) async {
    _tasks.clear();
    emit(const CalendarState.loading());
    try {
      final tasks = await taskRepository.getTaskByDeadline(_date.toIso8601String());
      _tasks.addAll(tasks);
      emit(CalendarState.loaded(date: _date, tasks: _tasks));
    } on DioException catch (dioError) {
      emit(CalendarState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onChecklistUpdated(
    _UpdatedEvent event,
    Emitter<CalendarState> emit,
  ) async {
    try {
      final tasks = await taskRepository.getTaskByDeadline(_date.toIso8601String());
      _tasks = [...tasks];
      emit(CalendarState.loaded(date: _date, tasks: _tasks));
    } on DioException catch (dioError) {
      emit(CalendarState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onSelectedDateItem(
    _SelectedDateEvent event,
    Emitter<CalendarState> emit,
  ) async {
    try {
      _date = event.date;
      final tasks = await taskRepository.getTaskByDeadline(_date.toIso8601String());
      _tasks = [...tasks];
      emit(CalendarState.loaded(date: _date, tasks: _tasks));
    } on DioException catch (dioError) {
      emit(CalendarState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }

  FutureOr<void> _onCheckedItem(
    _CheckedItemEvent event,
    Emitter<CalendarState> emit,
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
      emit(CalendarState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }
}
