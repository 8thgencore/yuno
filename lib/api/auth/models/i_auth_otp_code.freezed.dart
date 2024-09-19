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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IAuthOtpCode _$IAuthOtpCodeFromJson(Map<String, dynamic> json) {
  return _IAuthOtpCode.fromJson(json);
}

/// @nodoc
mixin _$IAuthOtpCode {
  String get email => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;

  /// Serializes this IAuthOtpCode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IAuthOtpCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IAuthOtpCodeCopyWith<IAuthOtpCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAuthOtpCodeCopyWith<$Res> {
  factory $IAuthOtpCodeCopyWith(
          IAuthOtpCode value, $Res Function(IAuthOtpCode) then) =
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

  /// Create a copy of IAuthOtpCode
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$IAuthOtpCodeImplCopyWith<$Res>
    implements $IAuthOtpCodeCopyWith<$Res> {
  factory _$$IAuthOtpCodeImplCopyWith(
          _$IAuthOtpCodeImpl value, $Res Function(_$IAuthOtpCodeImpl) then) =
      __$$IAuthOtpCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String otp});
}

/// @nodoc
class __$$IAuthOtpCodeImplCopyWithImpl<$Res>
    extends _$IAuthOtpCodeCopyWithImpl<$Res, _$IAuthOtpCodeImpl>
    implements _$$IAuthOtpCodeImplCopyWith<$Res> {
  __$$IAuthOtpCodeImplCopyWithImpl(
      _$IAuthOtpCodeImpl _value, $Res Function(_$IAuthOtpCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of IAuthOtpCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
  }) {
    return _then(_$IAuthOtpCodeImpl(
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
class _$IAuthOtpCodeImpl implements _IAuthOtpCode {
  const _$IAuthOtpCodeImpl({required this.email, required this.otp});

  factory _$IAuthOtpCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$IAuthOtpCodeImplFromJson(json);

  @override
  final String email;
  @override
  final String otp;

  @override
  String toString() {
    return 'IAuthOtpCode(email: $email, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IAuthOtpCodeImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, otp);

  /// Create a copy of IAuthOtpCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IAuthOtpCodeImplCopyWith<_$IAuthOtpCodeImpl> get copyWith =>
      __$$IAuthOtpCodeImplCopyWithImpl<_$IAuthOtpCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IAuthOtpCodeImplToJson(
      this,
    );
  }
}

abstract class _IAuthOtpCode implements IAuthOtpCode {
  const factory _IAuthOtpCode(
      {required final String email,
      required final String otp}) = _$IAuthOtpCodeImpl;

  factory _IAuthOtpCode.fromJson(Map<String, dynamic> json) =
      _$IAuthOtpCodeImpl.fromJson;

  @override
  String get email;
  @override
  String get otp;

  /// Create a copy of IAuthOtpCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IAuthOtpCodeImplCopyWith<_$IAuthOtpCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
