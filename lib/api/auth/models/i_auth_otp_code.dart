import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_auth_otp_code.freezed.dart';
part 'i_auth_otp_code.g.dart';

@Freezed()
class IAuthOtpCode with _$IAuthOtpCode {
  const factory IAuthOtpCode({
    required String email,
    required String otp,
  }) = _IAuthOtpCode;

  factory IAuthOtpCode.fromJson(Map<String, dynamic> json) => _$IAuthOtpCodeFromJson(json);
}
