// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_auth_register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IAuthRegister _$IAuthRegisterFromJson(Map<String, dynamic> json) {
  return _IAuthRegister.fromJson(json);
}

/// @nodoc
mixin _$IAuthRegister {
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IAuthRegisterCopyWith<IAuthRegister> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAuthRegisterCopyWith<$Res> {
  factory $IAuthRegisterCopyWith(IAuthRegister value, $Res Function(IAuthRegister) then) =
      _$IAuthRegisterCopyWithImpl<$Res, IAuthRegister>;
  @useResult
  $Res call({String email, String username, String password});
}

/// @nodoc
class _$IAuthRegisterCopyWithImpl<$Res, $Val extends IAuthRegister>
    implements $IAuthRegisterCopyWith<$Res> {
  _$IAuthRegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IAuthRegisterCopyWith<$Res> implements $IAuthRegisterCopyWith<$Res> {
  factory _$$_IAuthRegisterCopyWith(_$_IAuthRegister value, $Res Function(_$_IAuthRegister) then) =
      __$$_IAuthRegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String username, String password});
}

/// @nodoc
class __$$_IAuthRegisterCopyWithImpl<$Res>
    extends _$IAuthRegisterCopyWithImpl<$Res, _$_IAuthRegister>
    implements _$$_IAuthRegisterCopyWith<$Res> {
  __$$_IAuthRegisterCopyWithImpl(_$_IAuthRegister _value, $Res Function(_$_IAuthRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_IAuthRegister(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
class _$_IAuthRegister implements _IAuthRegister {
  const _$_IAuthRegister({required this.email, required this.username, required this.password});

  factory _$_IAuthRegister.fromJson(Map<String, dynamic> json) => _$$_IAuthRegisterFromJson(json);

  @override
  final String email;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'IAuthRegister(email: $email, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IAuthRegister &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.password, password) || other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IAuthRegisterCopyWith<_$_IAuthRegister> get copyWith =>
      __$$_IAuthRegisterCopyWithImpl<_$_IAuthRegister>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IAuthRegisterToJson(
      this,
    );
  }
}

abstract class _IAuthRegister implements IAuthRegister {
  const factory _IAuthRegister(
      {required final String email,
      required final String username,
      required final String password}) = _$_IAuthRegister;

  factory _IAuthRegister.fromJson(Map<String, dynamic> json) = _$_IAuthRegister.fromJson;

  @override
  String get email;
  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_IAuthRegisterCopyWith<_$_IAuthRegister> get copyWith => throw _privateConstructorUsedError;
}
