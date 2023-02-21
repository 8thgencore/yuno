import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_auth_forgot_password.freezed.dart';
part 'i_auth_forgot_password.g.dart';

@Freezed()
class IAuthForgotPassword with _$IAuthForgotPassword {
  const factory IAuthForgotPassword({
    required String email,
  }) = _IAuthForgotPassword;

  factory IAuthForgotPassword.fromJson(Map<String, dynamic> json) =>
      _$IAuthForgotPasswordFromJson(json);
}
