part of 'home_projects_bloc.dart';

@freezed
class HomeProjectsEvent with _$HomeProjectsEvent {
  const factory HomeProjectsEvent.started() = _StartedEvent;
}
