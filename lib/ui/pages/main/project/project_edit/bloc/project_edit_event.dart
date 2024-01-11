part of 'project_edit_bloc.dart';

@Freezed(copyWith: false)
class ProjectEditEvent with _$ProjectEditEvent {
  const factory ProjectEditEvent.started(String id) = _StartedEvent;

  const factory ProjectEditEvent.nameChanged(String text) = _NameChangedEvent;

  const factory ProjectEditEvent.descriptionChanged(String text) = _DescriptionChangedEvent;

  const factory ProjectEditEvent.saved() = _SavedEvent;

  const factory ProjectEditEvent.updated() = _UpdatedEvent;
}
