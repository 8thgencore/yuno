part of 'projects_list_bloc.dart';

@freezed
class ProjectsListEvent with _$ProjectsListEvent {
  const factory ProjectsListEvent.started({required bool isSelf}) = _StartedEvent;
}
