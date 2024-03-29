part of 'reset_password_bloc.dart';

enum ResetPasswordStatus {
  initial,
  loading,
  failure,
  success,
}

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required String password,
    required String passwordConfirm,
    @Default(ResetPasswordStatus.initial) ResetPasswordStatus status,
    PasswordError? passwordError,
    PasswordConfirmError? passwordConfirmError,
    String? serverError,
    @Default(false) bool isValid,
  }) = _ResetPasswordState;
}
