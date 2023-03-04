part of 'project_members_bloc.dart';

@freezed
class ProjectMembersEvent with _$ProjectMembersEvent {
  const factory ProjectMembersEvent.started(String id) = _StartedEvent;
}
