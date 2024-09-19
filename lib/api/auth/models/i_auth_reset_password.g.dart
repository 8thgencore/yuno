// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_auth_reset_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IAuthResetPasswordImpl _$$IAuthResetPasswordImplFromJson(
        Map<String, dynamic> json) =>
    _$IAuthResetPasswordImpl(
      resetToken: json['reset_token'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$IAuthResetPasswordImplToJson(
        _$IAuthResetPasswordImpl instance) =>
    <String, dynamic>{
      'reset_token': instance.resetToken,
      'password': instance.password,
    };
