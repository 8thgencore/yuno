part of 'task_edit_bloc.dart';

enum TaskEditStatus {
  initial,
  loading,
  loaded,
  failure,
  failureLoaded,
  fillingFields,
  successUpdated,
  successCreated,
}

@freezed
class TaskEditState with _$TaskEditState {
  const factory TaskEditState({
    required String id,
    required String name,
    @Default(TaskEditStatus.initial) TaskEditStatus status,
    DateTime? deadline,
    String? projectId,
    bool? done,
    String? serverError,
  }) = _TaskEditState;
}
