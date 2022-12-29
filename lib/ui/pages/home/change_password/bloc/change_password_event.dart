part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.started() = _StartedEvent;

  const factory ChangePasswordEvent.currentPasswordChanged(String text) = _CurrentPasswordChangedEvent;

  const factory ChangePasswordEvent.newPasswordChanged(String text) = _NewPasswordChangedEvent;

  const factory ChangePasswordEvent.confirmNewPasswordChanged(String text) = _ConfirmNewPasswordChangedEvent;

  const factory ChangePasswordEvent.saved() = _SavedEvent;
}
