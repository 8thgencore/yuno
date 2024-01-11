part of 'otp_bloc.dart';

@Freezed(copyWith: false)
class OtpEvent with _$OtpEvent {
  const factory OtpEvent.otpChanged(String text, int index) = _OtpChangedEvent;

  const factory OtpEvent.otpFocusLost() = _OtpFocusLostEvent;

  const factory OtpEvent.continued() = _ContinuedEvent;

  const factory OtpEvent.closedError() = _ClosedErrorEvent;
}
