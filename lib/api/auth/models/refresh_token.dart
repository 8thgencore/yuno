import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token.freezed.dart';
part 'refresh_token.g.dart';

@freezed
class RefreshToken with _$RefreshToken {
  const factory RefreshToken({
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _RefreshToken;

  factory RefreshToken.fromJson(Map<String, dynamic> json) => _$RefreshTokenFromJson(json);
}
