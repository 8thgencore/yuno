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
    @Default(OtpStatus.initial) OtpStatus status,
    required String otp,
    String? serverError,
    @Default(false) bool isValid,
  }) = _OtpState;
}
