part of 'project_details_bloc.dart';

@freezed
class ProjectDetailsEvent with _$ProjectDetailsEvent {
  const factory ProjectDetailsEvent.started(String id) = _StartedEvent;

  const factory ProjectDetailsEvent.checkedTask(String id) = _CheckTaskEvent;

  const factory ProjectDetailsEvent.update() = _UpdateProjectEvent;

  const factory ProjectDetailsEvent.join() = _JoinProjectEvent;

  const factory ProjectDetailsEvent.leave() = _LeaveProjectEvent;
}
