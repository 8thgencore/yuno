part of 'home_projects_bloc.dart';

@Freezed(copyWith: false)
class HomeProjectsEvent with _$HomeProjectsEvent {
  const factory HomeProjectsEvent.started() = _StartedEvent;
}
