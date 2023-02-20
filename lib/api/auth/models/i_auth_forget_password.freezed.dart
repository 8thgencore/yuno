// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_auth_forget_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IAuthForgetPassword _$IAuthForgetPasswordFromJson(Map<String, dynamic> json) {
  return _IAuthForgetPassword.fromJson(json);
}

/// @nodoc
mixin _$IAuthForgetPassword {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IAuthForgetPasswordCopyWith<IAuthForgetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAuthForgetPasswordCopyWith<$Res> {
  factory $IAuthForgetPasswordCopyWith(
          IAuthForgetPassword value, $Res Function(IAuthForgetPassword) then) =
      _$IAuthForgetPasswordCopyWithImpl<$Res, IAuthForgetPassword>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$IAuthForgetPasswordCopyWithImpl<$Res, $Val extends IAuthForgetPassword>
    implements $IAuthForgetPasswordCopyWith<$Res> {
  _$IAuthForgetPasswordCopyWithImpl(this._value, this._then);

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
abstract class _$$_IAuthForgetPasswordCopyWith<$Res> implements $IAuthForgetPasswordCopyWith<$Res> {
  factory _$$_IAuthForgetPasswordCopyWith(
          _$_IAuthForgetPassword value, $Res Function(_$_IAuthForgetPassword) then) =
      __$$_IAuthForgetPasswordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_IAuthForgetPasswordCopyWithImpl<$Res>
    extends _$IAuthForgetPasswordCopyWithImpl<$Res, _$_IAuthForgetPassword>
    implements _$$_IAuthForgetPasswordCopyWith<$Res> {
  __$$_IAuthForgetPasswordCopyWithImpl(
      _$_IAuthForgetPassword _value, $Res Function(_$_IAuthForgetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_IAuthForgetPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IAuthForgetPassword implements _IAuthForgetPassword {
  const _$_IAuthForgetPassword({required this.email});

  factory _$_IAuthForgetPassword.fromJson(Map<String, dynamic> json) =>
      _$$_IAuthForgetPasswordFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'IAuthForgetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IAuthForgetPassword &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IAuthForgetPasswordCopyWith<_$_IAuthForgetPassword> get copyWith =>
      __$$_IAuthForgetPasswordCopyWithImpl<_$_IAuthForgetPassword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IAuthForgetPasswordToJson(
      this,
    );
  }
}

abstract class _IAuthForgetPassword implements IAuthForgetPassword {
  const factory _IAuthForgetPassword({required final String email}) = _$_IAuthForgetPassword;

  factory _IAuthForgetPassword.fromJson(Map<String, dynamic> json) =
      _$_IAuthForgetPassword.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_IAuthForgetPasswordCopyWith<_$_IAuthForgetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
