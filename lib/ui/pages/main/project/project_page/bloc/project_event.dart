part of 'project_bloc.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.started(String id) = _StartedEvent;

  const factory ProjectEvent.nameChanged(String text) = _NameChangedEvent;

  const factory ProjectEvent.descriptionChanged(String text) = _DescriptionChangedEvent;

  const factory ProjectEvent.saved() = _SavedEvent;

  const factory ProjectEvent.updated() = _UpdatedEvent;
}
