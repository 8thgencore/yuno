part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged(String text) = _EmailChangedEvent;

  const factory ForgotPasswordEvent.emailFocusLost() = _EmailFocusLostEvent;

  const factory ForgotPasswordEvent.continued() = _ContinuedEvent;

  const factory ForgotPasswordEvent.closedError() = _ClosedErrorEvent;
}
