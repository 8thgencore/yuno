import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_auth_reset_password.freezed.dart';
part 'i_auth_reset_password.g.dart';

@Freezed()
class IAuthResetPassword with _$IAuthResetPassword {
  const factory IAuthResetPassword({
    @JsonKey(name: 'reset_token') required String resetToken,
    required String password,
  }) = _IAuthResetPassword;

  factory IAuthResetPassword.fromJson(Map<String, dynamic> json) =>
      _$IAuthResetPasswordFromJson(json);
}
