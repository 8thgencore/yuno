// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_auth_change_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IAuthChangePassword _$IAuthChangePasswordFromJson(Map<String, dynamic> json) {
  return _IAuthChangePassword.fromJson(json);
}

/// @nodoc
mixin _$IAuthChangePassword {
  String get current => throw _privateConstructorUsedError;
  @JsonKey(name: 'new')
  String get newvalue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IAuthChangePasswordCopyWith<IAuthChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAuthChangePasswordCopyWith<$Res> {
  factory $IAuthChangePasswordCopyWith(
          IAuthChangePassword value, $Res Function(IAuthChangePassword) then) =
      _$IAuthChangePasswordCopyWithImpl<$Res, IAuthChangePassword>;
  @useResult
  $Res call({String current, @JsonKey(name: 'new') String newvalue});
}

/// @nodoc
class _$IAuthChangePasswordCopyWithImpl<$Res, $Val extends IAuthChangePassword>
    implements $IAuthChangePasswordCopyWith<$Res> {
  _$IAuthChangePasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? newvalue = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
      newvalue: null == newvalue
          ? _value.newvalue
          : newvalue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IAuthChangePasswordCopyWith<$Res> implements $IAuthChangePasswordCopyWith<$Res> {
  factory _$$_IAuthChangePasswordCopyWith(
          _$_IAuthChangePassword value, $Res Function(_$_IAuthChangePassword) then) =
      __$$_IAuthChangePasswordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String current, @JsonKey(name: 'new') String newvalue});
}

/// @nodoc
class __$$_IAuthChangePasswordCopyWithImpl<$Res>
    extends _$IAuthChangePasswordCopyWithImpl<$Res, _$_IAuthChangePassword>
    implements _$$_IAuthChangePasswordCopyWith<$Res> {
  __$$_IAuthChangePasswordCopyWithImpl(
      _$_IAuthChangePassword _value, $Res Function(_$_IAuthChangePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? newvalue = null,
  }) {
    return _then(_$_IAuthChangePassword(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
      newvalue: null == newvalue
          ? _value.newvalue
          : newvalue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IAuthChangePassword implements _IAuthChangePassword {
  const _$_IAuthChangePassword(
      {required this.current, @JsonKey(name: 'new') required this.newvalue});

  factory _$_IAuthChangePassword.fromJson(Map<String, dynamic> json) =>
      _$$_IAuthChangePasswordFromJson(json);

  @override
  final String current;
  @override
  @JsonKey(name: 'new')
  final String newvalue;

  @override
  String toString() {
    return 'IAuthChangePassword(current: $current, newvalue: $newvalue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IAuthChangePassword &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.newvalue, newvalue) || other.newvalue == newvalue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, newvalue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IAuthChangePasswordCopyWith<_$_IAuthChangePassword> get copyWith =>
      __$$_IAuthChangePasswordCopyWithImpl<_$_IAuthChangePassword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IAuthChangePasswordToJson(
      this,
    );
  }
}

abstract class _IAuthChangePassword implements IAuthChangePassword {
  const factory _IAuthChangePassword(
      {required final String current,
      @JsonKey(name: 'new') required final String newvalue}) = _$_IAuthChangePassword;

  factory _IAuthChangePassword.fromJson(Map<String, dynamic> json) =
      _$_IAuthChangePassword.fromJson;

  @override
  String get current;
  @override
  @JsonKey(name: 'new')
  String get newvalue;
  @override
  @JsonKey(ignore: true)
  _$$_IAuthChangePasswordCopyWith<_$_IAuthChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}
