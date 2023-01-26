part of 'profile_edit_bloc.dart';

@freezed
class ProfileEditEvent with _$ProfileEditEvent {
  const factory ProfileEditEvent.started() = _StartedEvent;

  const factory ProfileEditEvent.firstNameChanged(String text) = _FirstNameChangedEvent;

  const factory ProfileEditEvent.lastNameChanged(String text) = _LastNameChangedEvent;

  const factory ProfileEditEvent.usernameChanged(String text) = _UsernameChangedEvent;

  const factory ProfileEditEvent.emailChanged(String text) = _EmailChangedEvent;

  const factory ProfileEditEvent.saved() = _SavedEvent;
}
