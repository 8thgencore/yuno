import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_auth_token.freezed.dart';
part 'i_auth_token.g.dart';

@freezed
class IAuthToken with _$IAuthToken {
  const factory IAuthToken({
    required String username,
    required String password,
    @JsonKey(name: 'grant_type')
    String? grantType,
    @JsonKey(defaultValue: '')
    String? scope,
    @JsonKey(name: 'client_id')
    String? clientId,
    @JsonKey(name: 'client_secret')
    String? clientSecret,
  }) = _IAuthToken;
  
  factory IAuthToken.fromJson(Map<String, dynamic> json) => _$IAuthTokenFromJson(json);
}
