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
    @Default(ChangePasswordStatus.initial) ChangePasswordStatus status,
    required String currentPassword,
    required String newPassword,
    required String confirmNewPassword,
    ChangePasswordError? newPasswordError,
    ChangePasswordConfirmError? confirmPasswordError,
    String? serverError,
  }) = _ChangePasswordState;
}
