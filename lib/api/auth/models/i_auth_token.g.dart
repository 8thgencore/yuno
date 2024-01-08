// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_auth_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IAuthTokenImpl _$$IAuthTokenImplFromJson(Map<String, dynamic> json) => _$IAuthTokenImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      grantType: json['grant_type'] as String?,
      scope: json['scope'] as String? ?? '',
      clientId: json['client_id'] as String?,
      clientSecret: json['client_secret'] as String?,
    );

Map<String, dynamic> _$$IAuthTokenImplToJson(_$IAuthTokenImpl instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'grant_type': instance.grantType,
      'scope': instance.scope,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };
