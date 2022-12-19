import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_auth_register.freezed.dart';
part 'i_auth_register.g.dart';

@freezed
class IAuthRegister with _$IAuthRegister {
  const factory IAuthRegister({
    required String email,
    required String username,
    required String password,
  }) = _IAuthRegister;
  
  factory IAuthRegister.fromJson(Map<String, dynamic> json) => _$IAuthRegisterFromJson(json);
}
