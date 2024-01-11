part of 'project_members_bloc.dart';

@Freezed(copyWith: false)
class ProjectMembersEvent with _$ProjectMembersEvent {
  const factory ProjectMembersEvent.started(String id) = _StartedEvent;
}
