// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_auth_reset_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IAuthResetPassword _$IAuthResetPasswordFromJson(Map<String, dynamic> json) {
  return _IAuthResetPassword.fromJson(json);
}

/// @nodoc
mixin _$IAuthResetPassword {
  @JsonKey(name: 'reset_token')
  String get resetToken => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IAuthResetPasswordCopyWith<IAuthResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAuthResetPasswordCopyWith<$Res> {
  factory $IAuthResetPasswordCopyWith(
          IAuthResetPassword value, $Res Function(IAuthResetPassword) then) =
      _$IAuthResetPasswordCopyWithImpl<$Res, IAuthResetPassword>;
  @useResult
  $Res call({@JsonKey(name: 'reset_token') String resetToken, String password});
}

/// @nodoc
class _$IAuthResetPasswordCopyWithImpl<$Res, $Val extends IAuthResetPassword>
    implements $IAuthResetPasswordCopyWith<$Res> {
  _$IAuthResetPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resetToken = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      resetToken: null == resetToken
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IAuthResetPasswordImplCopyWith<$Res>
    implements $IAuthResetPasswordCopyWith<$Res> {
  factory _$$IAuthResetPasswordImplCopyWith(
          _$IAuthResetPasswordImpl value, $Res Function(_$IAuthResetPasswordImpl) then) =
      __$$IAuthResetPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'reset_token') String resetToken, String password});
}

/// @nodoc
class __$$IAuthResetPasswordImplCopyWithImpl<$Res>
    extends _$IAuthResetPasswordCopyWithImpl<$Res, _$IAuthResetPasswordImpl>
    implements _$$IAuthResetPasswordImplCopyWith<$Res> {
  __$$IAuthResetPasswordImplCopyWithImpl(
      _$IAuthResetPasswordImpl _value, $Res Function(_$IAuthResetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resetToken = null,
    Object? password = null,
  }) {
    return _then(_$IAuthResetPasswordImpl(
      resetToken: null == resetToken
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IAuthResetPasswordImpl implements _IAuthResetPassword {
  const _$IAuthResetPasswordImpl(
      {@JsonKey(name: 'reset_token') required this.resetToken, required this.password});

  factory _$IAuthResetPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$IAuthResetPasswordImplFromJson(json);

  @override
  @JsonKey(name: 'reset_token')
  final String resetToken;
  @override
  final String password;

  @override
  String toString() {
    return 'IAuthResetPassword(resetToken: $resetToken, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IAuthResetPasswordImpl &&
            (identical(other.resetToken, resetToken) || other.resetToken == resetToken) &&
            (identical(other.password, password) || other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resetToken, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IAuthResetPasswordImplCopyWith<_$IAuthResetPasswordImpl> get copyWith =>
      __$$IAuthResetPasswordImplCopyWithImpl<_$IAuthResetPasswordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IAuthResetPasswordImplToJson(
      this,
    );
  }
}

abstract class _IAuthResetPassword implements IAuthResetPassword {
  const factory _IAuthResetPassword(
      {@JsonKey(name: 'reset_token') required final String resetToken,
      required final String password}) = _$IAuthResetPasswordImpl;

  factory _IAuthResetPassword.fromJson(Map<String, dynamic> json) =
      _$IAuthResetPasswordImpl.fromJson;

  @override
  @JsonKey(name: 'reset_token')
  String get resetToken;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$IAuthResetPasswordImplCopyWith<_$IAuthResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
