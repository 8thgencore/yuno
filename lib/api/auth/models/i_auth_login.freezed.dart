// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_auth_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IAuthLogin _$IAuthLoginFromJson(Map<String, dynamic> json) {
  return _IAuthLogin.fromJson(json);
}

/// @nodoc
mixin _$IAuthLogin {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IAuthLoginCopyWith<IAuthLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAuthLoginCopyWith<$Res> {
  factory $IAuthLoginCopyWith(
          IAuthLogin value, $Res Function(IAuthLogin) then) =
      _$IAuthLoginCopyWithImpl<$Res, IAuthLogin>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$IAuthLoginCopyWithImpl<$Res, $Val extends IAuthLogin>
    implements $IAuthLoginCopyWith<$Res> {
  _$IAuthLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IAuthLoginCopyWith<$Res>
    implements $IAuthLoginCopyWith<$Res> {
  factory _$$_IAuthLoginCopyWith(
          _$_IAuthLogin value, $Res Function(_$_IAuthLogin) then) =
      __$$_IAuthLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_IAuthLoginCopyWithImpl<$Res>
    extends _$IAuthLoginCopyWithImpl<$Res, _$_IAuthLogin>
    implements _$$_IAuthLoginCopyWith<$Res> {
  __$$_IAuthLoginCopyWithImpl(
      _$_IAuthLogin _value, $Res Function(_$_IAuthLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_IAuthLogin(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$_IAuthLogin implements _IAuthLogin {
  const _$_IAuthLogin({required this.email, required this.password});

  factory _$_IAuthLogin.fromJson(Map<String, dynamic> json) =>
      _$$_IAuthLoginFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'IAuthLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IAuthLogin &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IAuthLoginCopyWith<_$_IAuthLogin> get copyWith =>
      __$$_IAuthLoginCopyWithImpl<_$_IAuthLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IAuthLoginToJson(
      this,
    );
  }
}

abstract class _IAuthLogin implements IAuthLogin {
  const factory _IAuthLogin(
      {required final String email,
      required final String password}) = _$_IAuthLogin;

  factory _IAuthLogin.fromJson(Map<String, dynamic> json) =
      _$_IAuthLogin.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_IAuthLoginCopyWith<_$_IAuthLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
