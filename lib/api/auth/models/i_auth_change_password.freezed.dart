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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IAuthChangePassword _$IAuthChangePasswordFromJson(Map<String, dynamic> json) {
  return _IAuthChangePassword.fromJson(json);
}

/// @nodoc
mixin _$IAuthChangePassword {
  @JsonKey(name: 'current_password')
  String get currentPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this IAuthChangePassword to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IAuthChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IAuthChangePasswordCopyWith<IAuthChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAuthChangePasswordCopyWith<$Res> {
  factory $IAuthChangePasswordCopyWith(
          IAuthChangePassword value, $Res Function(IAuthChangePassword) then) =
      _$IAuthChangePasswordCopyWithImpl<$Res, IAuthChangePassword>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_password') String currentPassword,
      @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class _$IAuthChangePasswordCopyWithImpl<$Res, $Val extends IAuthChangePassword>
    implements $IAuthChangePasswordCopyWith<$Res> {
  _$IAuthChangePasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IAuthChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IAuthChangePasswordImplCopyWith<$Res>
    implements $IAuthChangePasswordCopyWith<$Res> {
  factory _$$IAuthChangePasswordImplCopyWith(_$IAuthChangePasswordImpl value,
          $Res Function(_$IAuthChangePasswordImpl) then) =
      __$$IAuthChangePasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_password') String currentPassword,
      @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class __$$IAuthChangePasswordImplCopyWithImpl<$Res>
    extends _$IAuthChangePasswordCopyWithImpl<$Res, _$IAuthChangePasswordImpl>
    implements _$$IAuthChangePasswordImplCopyWith<$Res> {
  __$$IAuthChangePasswordImplCopyWithImpl(_$IAuthChangePasswordImpl _value,
      $Res Function(_$IAuthChangePasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of IAuthChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$IAuthChangePasswordImpl(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IAuthChangePasswordImpl implements _IAuthChangePassword {
  const _$IAuthChangePasswordImpl(
      {@JsonKey(name: 'current_password') required this.currentPassword,
      @JsonKey(name: 'new_password') required this.newPassword});

  factory _$IAuthChangePasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$IAuthChangePasswordImplFromJson(json);

  @override
  @JsonKey(name: 'current_password')
  final String currentPassword;
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;

  @override
  String toString() {
    return 'IAuthChangePassword(currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IAuthChangePasswordImpl &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPassword, newPassword);

  /// Create a copy of IAuthChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IAuthChangePasswordImplCopyWith<_$IAuthChangePasswordImpl> get copyWith =>
      __$$IAuthChangePasswordImplCopyWithImpl<_$IAuthChangePasswordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IAuthChangePasswordImplToJson(
      this,
    );
  }
}

abstract class _IAuthChangePassword implements IAuthChangePassword {
  const factory _IAuthChangePassword(
      {@JsonKey(name: 'current_password') required final String currentPassword,
      @JsonKey(name: 'new_password')
      required final String newPassword}) = _$IAuthChangePasswordImpl;

  factory _IAuthChangePassword.fromJson(Map<String, dynamic> json) =
      _$IAuthChangePasswordImpl.fromJson;

  @override
  @JsonKey(name: 'current_password')
  String get currentPassword;
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;

  /// Create a copy of IAuthChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IAuthChangePasswordImplCopyWith<_$IAuthChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
