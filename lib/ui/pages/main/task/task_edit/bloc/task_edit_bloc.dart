import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';

part 'task_edit_bloc.freezed.dart';
part 'task_edit_event.dart';
part 'task_edit_state.dart';

class TaskEditBloc extends Bloc<TaskEditEvent, TaskEditState> {
  TaskEditBloc({
    required this.apiTaskRepository,
  }) : super(const TaskEditState(
          status: TaskEditStatus.initial,
          id: '',
          name: '',
        )) {
    on<TaskEditEvent>(
      (event, emit) => event.map(
        started: (event) => _onTaskLoaded(event, emit),
        nameChanged: (event) => _onNameChanged(event, emit),
        deadlineChanged: (event) => _onDeadlineChanged(event, emit),
        clickSwitch: (event) => _onClickSwitch(event, emit),
        saved: (event) => _onTaskSaved(event, emit),
        updated: (event) => _onTaskUpdated(event, emit),
      ),
    );
  }

  final ApiTaskRepository apiTaskRepository;

  FutureOr<void> _onTaskLoaded(
    _StartedEvent event,
    Emitter<TaskEditState> emit,
  ) async {
    emit(state.copyWith(status: TaskEditStatus.loading));
    try {
      if (event.id.length < 36) {
        emit(state.copyWith(
          status: TaskEditStatus.loaded,
          projectId: event.projectId,
        ));
      } else {
        final task = await apiTaskRepository.getById(id: event.id);
        if (task != null) {
          emit(state.copyWith(
            status: TaskEditStatus.loaded,
            id: task.id,
            name: task.name,
            deadline: task.deadline,
            done: task.done,
            projectId: task.projectId,
          ));
        }
      }
      emit(state.copyWith(status: TaskEditStatus.fillingFields));
    } on DioError catch (dioError) {
      emit(state.copyWith(
        status: TaskEditStatus.failure,
        serverError: dioErrorInterceptor(dioError).toString(),
      ));
    }
  }

  FutureOr<void> _onNameChanged(
    _NameChangedEvent event,
    Emitter<TaskEditState> emit,
  ) async {
    emit(state.copyWith(name: event.text));
  }

  FutureOr<void> _onDeadlineChanged(
    _DeadlineChangedEvent event,
    Emitter<TaskEditState> emit,
  ) async {
    emit(state.copyWith(deadline: event.dateTime));
  }

  FutureOr<void> _onClickSwitch(
    _ClickSwitchEvent event,
    Emitter<TaskEditState> emit,
  ) async {
    emit(state.copyWith(done: event.value));
  }

  FutureOr<void> _onTaskSaved(
    _SavedEvent event,
    Emitter<TaskEditState> emit,
  ) async {
    emit(state.copyWith(status: TaskEditStatus.loading));
    try {
      final result = await apiTaskRepository.create(
        name: state.name,
        deadline: state.deadline,
        done: state.done ?? false,
        projectId: state.projectId,
      );
      if (result != null) {
        emit(state.copyWith(status: TaskEditStatus.successCreated));
      }
    } on DioError catch (dioError) {
      emit(state.copyWith(
        status: TaskEditStatus.failure,
        serverError: dioErrorInterceptor(dioError).toString(),
      ));
    }
  }

  FutureOr<void> _onTaskUpdated(
    _UpdatedEvent event,
    Emitter<TaskEditState> emit,
  ) async {
    emit(state.copyWith(status: TaskEditStatus.loading));
    try {
      final result = await apiTaskRepository.updateById(
        id: state.id,
        name: state.name,
        deadline: state.deadline,
        done: state.done,
        projectId: state.projectId,
      );
      if (result != null) {
        emit(state.copyWith(status: TaskEditStatus.successUpdated));
      }
    } on DioError catch (dioError) {
      emit(state.copyWith(
        status: TaskEditStatus.failure,
        serverError: dioErrorInterceptor(dioError).toString(),
      ));
    }
  }
}
