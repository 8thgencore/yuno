part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _StartedEvent;
  const factory ProfileEvent.logout() = _LogoutEvent;
}
