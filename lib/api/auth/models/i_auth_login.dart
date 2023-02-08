import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_auth_login.freezed.dart';
part 'i_auth_login.g.dart';

@freezed
class IAuthLogin with _$IAuthLogin {
  const factory IAuthLogin({
    required String email,
    required String password,
  }) = _IAuthLogin;

  factory IAuthLogin.fromJson(Map<String, dynamic> json) => _$IAuthLoginFromJson(json);
}
