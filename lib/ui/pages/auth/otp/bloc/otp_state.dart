part of 'otp_bloc.dart';

enum OtpStatus {
  initial,
  loading,
  failure,
  success,
}

@freezed
class OtpState with _$OtpState {
  const factory OtpState({
    required String otp,
    @Default(OtpStatus.initial) OtpStatus status,
    String? serverError,
    @Default(false) bool isValid,
  }) = _OtpState;
}
