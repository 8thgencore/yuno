part of 'change_password_bloc.dart';

enum ChangePasswordStatus {
  initial,
  loading,
  loaded,
  failure,
  success,
}

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required String currentPassword,
    required String newPassword,
    required String newPasswordConfirm,
    @Default(ChangePasswordStatus.initial) ChangePasswordStatus status,
    @Default(false) bool isCurrentPasswordMoreLength,
    @Default(false) bool isNewPasswordMoreLength,
    @Default(false) bool isPasswordHaveNumber,
    @Default(false) bool isPasswordConfirm,
    @Default(false) bool isValid,
    String? serverError,
  }) = _ChangePasswordState;
}
