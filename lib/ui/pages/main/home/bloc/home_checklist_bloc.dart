import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
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
    emit(const HomeChecklistState.loading());
    try {
      final tasks = await apiTaskRepository.getTasks();
      if (tasks is List<ITaskRead>) {
        if (tasks.isNotEmpty) {
          _tasks.addAll(tasks.where((task) => task.done == false));
        }
        emit(HomeChecklistState.loaded(tasks: _tasks));
      } else {
        emit(const HomeChecklistState.failure('Wrong data from server'));
      }
    } on Exception catch (_) {
      emit(const HomeChecklistState.failure("Don't get tasks"));
    }
  }

  FutureOr<void> _onCheckItem(
    _CheckItemEvent event,
    Emitter<HomeChecklistState> emit,
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
