part of 'forgot_password_bloc.dart';

enum ForgotPasswordStatus {
  initial,
  loading,
  failure,
  success,
}

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(ForgotPasswordStatus.initial) ForgotPasswordStatus status,
    required String email,
    ForgotPasswordEmailError? emailError,
    String? serverError,
    @Default(false) bool isValid,
  }) = _ForgotPasswordState;
}
