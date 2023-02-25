// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_auth_otp_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IAuthOtpCode _$IAuthOtpCodeFromJson(Map<String, dynamic> json) {
  return _IAuthOtpCode.fromJson(json);
}

/// @nodoc
mixin _$IAuthOtpCode {
  String get email => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IAuthOtpCodeCopyWith<IAuthOtpCode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAuthOtpCodeCopyWith<$Res> {
  factory $IAuthOtpCodeCopyWith(IAuthOtpCode value, $Res Function(IAuthOtpCode) then) =
      _$IAuthOtpCodeCopyWithImpl<$Res, IAuthOtpCode>;
  @useResult
  $Res call({String email, String otp});
}

/// @nodoc
class _$IAuthOtpCodeCopyWithImpl<$Res, $Val extends IAuthOtpCode>
    implements $IAuthOtpCodeCopyWith<$Res> {
  _$IAuthOtpCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IAuthOtpCodeCopyWith<$Res> implements $IAuthOtpCodeCopyWith<$Res> {
  factory _$$_IAuthOtpCodeCopyWith(_$_IAuthOtpCode value, $Res Function(_$_IAuthOtpCode) then) =
      __$$_IAuthOtpCodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String otp});
}

/// @nodoc
class __$$_IAuthOtpCodeCopyWithImpl<$Res> extends _$IAuthOtpCodeCopyWithImpl<$Res, _$_IAuthOtpCode>
    implements _$$_IAuthOtpCodeCopyWith<$Res> {
  __$$_IAuthOtpCodeCopyWithImpl(_$_IAuthOtpCode _value, $Res Function(_$_IAuthOtpCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
  }) {
    return _then(_$_IAuthOtpCode(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IAuthOtpCode implements _IAuthOtpCode {
  const _$_IAuthOtpCode({required this.email, required this.otp});

  factory _$_IAuthOtpCode.fromJson(Map<String, dynamic> json) => _$$_IAuthOtpCodeFromJson(json);

  @override
  final String email;
  @override
  final String otp;

  @override
  String toString() {
    return 'IAuthOtpCode(email: $email, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IAuthOtpCode &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IAuthOtpCodeCopyWith<_$_IAuthOtpCode> get copyWith =>
      __$$_IAuthOtpCodeCopyWithImpl<_$_IAuthOtpCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IAuthOtpCodeToJson(
      this,
    );
  }
}

abstract class _IAuthOtpCode implements IAuthOtpCode {
  const factory _IAuthOtpCode({required final String email, required final String otp}) =
      _$_IAuthOtpCode;

  factory _IAuthOtpCode.fromJson(Map<String, dynamic> json) = _$_IAuthOtpCode.fromJson;

  @override
  String get email;
  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$_IAuthOtpCodeCopyWith<_$_IAuthOtpCode> get copyWith => throw _privateConstructorUsedError;
}
