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
    required String email,
    @Default(ForgotPasswordStatus.initial) ForgotPasswordStatus status,
    EmailError? emailError,
    String? serverError,
    @Default(false) bool isValid,
  }) = _ForgotPasswordState;
}
