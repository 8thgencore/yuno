part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.passwordChanged(String text) = _PasswordChangedEvent;

  const factory ResetPasswordEvent.passwordFocusLost() = _PasswordFocusLostEvent;

  const factory ResetPasswordEvent.passwordConfirmChanged(String text) =
      _PasswordConfirmChangedEvent;

  const factory ResetPasswordEvent.passwordConfirmFocusLost() = _PasswordConfirmFocusLostEvent;

  const factory ResetPasswordEvent.continued() = _ContinuedEvent;

  const factory ResetPasswordEvent.closedError() = _ClosedErrorEvent;
}
