part of 'task_edit_bloc.dart';

@Freezed(copyWith: false)
class TaskEditEvent with _$TaskEditEvent {
  const factory TaskEditEvent.started({
    required String id,
    required String projectId,
  }) = _StartedEvent;

  const factory TaskEditEvent.nameChanged(String text) = _NameChangedEvent;

  const factory TaskEditEvent.deadlineChanged(DateTime dateTime) = _DeadlineChangedEvent;

  const factory TaskEditEvent.clickSwitch({required bool value}) = _ClickSwitchEvent;

  const factory TaskEditEvent.saved() = _SavedEvent;

  const factory TaskEditEvent.updated() = _UpdatedEvent;
}
