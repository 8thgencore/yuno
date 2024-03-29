import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_auth_change_password.freezed.dart';
part 'i_auth_change_password.g.dart';

@freezed
class IAuthChangePassword with _$IAuthChangePassword {
  const factory IAuthChangePassword({
    @JsonKey(name: 'current_password') required String currentPassword,
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _IAuthChangePassword;

  factory IAuthChangePassword.fromJson(Map<String, dynamic> json) =>
      _$IAuthChangePasswordFromJson(json);
}
