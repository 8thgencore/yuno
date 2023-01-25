part of 'project_details_bloc.dart';

@freezed
class ProjectDetailsEvent with _$ProjectDetailsEvent {
  const factory ProjectDetailsEvent.started(String id) = _StartedEvent;

  const factory ProjectDetailsEvent.checkedTask(String id) = _CheckTaskEvent;
}
