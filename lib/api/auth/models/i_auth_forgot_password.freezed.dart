// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_auth_forgot_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IAuthForgotPassword _$IAuthForgotPasswordFromJson(Map<String, dynamic> json) {
  return _IAuthForgotPassword.fromJson(json);
}

/// @nodoc
mixin _$IAuthForgotPassword {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IAuthForgotPasswordCopyWith<IAuthForgotPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAuthForgotPasswordCopyWith<$Res> {
  factory $IAuthForgotPasswordCopyWith(
          IAuthForgotPassword value, $Res Function(IAuthForgotPassword) then) =
      _$IAuthForgotPasswordCopyWithImpl<$Res, IAuthForgotPassword>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$IAuthForgotPasswordCopyWithImpl<$Res, $Val extends IAuthForgotPassword>
    implements $IAuthForgotPasswordCopyWith<$Res> {
  _$IAuthForgotPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IAuthForgotPasswordImplCopyWith<$Res>
    implements $IAuthForgotPasswordCopyWith<$Res> {
  factory _$$IAuthForgotPasswordImplCopyWith(
          _$IAuthForgotPasswordImpl value, $Res Function(_$IAuthForgotPasswordImpl) then) =
      __$$IAuthForgotPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$IAuthForgotPasswordImplCopyWithImpl<$Res>
    extends _$IAuthForgotPasswordCopyWithImpl<$Res, _$IAuthForgotPasswordImpl>
    implements _$$IAuthForgotPasswordImplCopyWith<$Res> {
  __$$IAuthForgotPasswordImplCopyWithImpl(
      _$IAuthForgotPasswordImpl _value, $Res Function(_$IAuthForgotPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$IAuthForgotPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IAuthForgotPasswordImpl implements _IAuthForgotPassword {
  const _$IAuthForgotPasswordImpl({required this.email});

  factory _$IAuthForgotPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$IAuthForgotPasswordImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'IAuthForgotPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IAuthForgotPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IAuthForgotPasswordImplCopyWith<_$IAuthForgotPasswordImpl> get copyWith =>
      __$$IAuthForgotPasswordImplCopyWithImpl<_$IAuthForgotPasswordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IAuthForgotPasswordImplToJson(
      this,
    );
  }
}

abstract class _IAuthForgotPassword implements IAuthForgotPassword {
  const factory _IAuthForgotPassword({required final String email}) = _$IAuthForgotPasswordImpl;

  factory _IAuthForgotPassword.fromJson(Map<String, dynamic> json) =
      _$IAuthForgotPasswordImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$IAuthForgotPasswordImplCopyWith<_$IAuthForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
