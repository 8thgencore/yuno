import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_auth_forget_password.freezed.dart';
part 'i_auth_forget_password.g.dart';

@Freezed()
class IAuthForgetPassword with _$IAuthForgetPassword {
  const factory IAuthForgetPassword({
    required String email,
  }) = _IAuthForgetPassword;

  factory IAuthForgetPassword.fromJson(Map<String, dynamic> json) =>
      _$IAuthForgetPasswordFromJson(json);
}
