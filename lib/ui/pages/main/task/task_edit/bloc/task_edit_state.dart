part of 'task_edit_bloc.dart';

enum TaskEditStatus {
  initial,
  loading,
  loaded,
  failure,
  fillingFields,
  successUpdated,
  successCreated,
}

@freezed
class TaskEditState with _$TaskEditState {
  const factory TaskEditState({
    @Default(TaskEditStatus.initial) TaskEditStatus status,
    required String id,
    required String name,
    String? deadline,
    String? projectId,
    bool? done,
    String? serverError,
  }) = _TaskEditState;
}