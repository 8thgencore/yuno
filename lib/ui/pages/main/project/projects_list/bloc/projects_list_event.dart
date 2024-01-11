part of 'projects_list_bloc.dart';

@Freezed(copyWith: false)
class ProjectsListEvent with _$ProjectsListEvent {
  const factory ProjectsListEvent.started({required bool isSelf}) = _StartedEvent;

  const factory ProjectsListEvent.nextLoaded() = _NextLoadedEvent;

  const factory ProjectsListEvent.autoLoaded() = _AutoLoadedEvent;

  const factory ProjectsListEvent.updated() = _UpdatedEvent;
}
