part of 'task_edit_bloc.dart';

@freezed
class TaskEditEvent with _$TaskEditEvent {
  const factory TaskEditEvent.started({
    required String id,
    required String projectId,
  }) = _StartedEvent;

  const factory TaskEditEvent.nameChanged(String text) = _NameChangedEvent;

  const factory TaskEditEvent.deadlineChanged(String text) = _DeadlineChangedEvent;

  const factory TaskEditEvent.clickSwitch(bool value) = _ClickSwitchEvent;

  const factory TaskEditEvent.saved() = _SavedEvent;

  const factory TaskEditEvent.updated() = _UpdatedEvent;
}
