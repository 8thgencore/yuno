// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_auth_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IAuthToken _$IAuthTokenFromJson(Map<String, dynamic> json) {
  return _IAuthToken.fromJson(json);
}

/// @nodoc
mixin _$IAuthToken {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'grant_type')
  String? get grantType => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String? get scope => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  String? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_secret')
  String? get clientSecret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IAuthTokenCopyWith<IAuthToken> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAuthTokenCopyWith<$Res> {
  factory $IAuthTokenCopyWith(IAuthToken value, $Res Function(IAuthToken) then) =
      _$IAuthTokenCopyWithImpl<$Res, IAuthToken>;
  @useResult
  $Res call(
      {String username,
      String password,
      @JsonKey(name: 'grant_type') String? grantType,
      @JsonKey(defaultValue: '') String? scope,
      @JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'client_secret') String? clientSecret});
}

/// @nodoc
class _$IAuthTokenCopyWithImpl<$Res, $Val extends IAuthToken> implements $IAuthTokenCopyWith<$Res> {
  _$IAuthTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? grantType = freezed,
    Object? scope = freezed,
    Object? clientId = freezed,
    Object? clientSecret = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      grantType: freezed == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IAuthTokenImplCopyWith<$Res> implements $IAuthTokenCopyWith<$Res> {
  factory _$$IAuthTokenImplCopyWith(_$IAuthTokenImpl value, $Res Function(_$IAuthTokenImpl) then) =
      __$$IAuthTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String password,
      @JsonKey(name: 'grant_type') String? grantType,
      @JsonKey(defaultValue: '') String? scope,
      @JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'client_secret') String? clientSecret});
}

/// @nodoc
class __$$IAuthTokenImplCopyWithImpl<$Res> extends _$IAuthTokenCopyWithImpl<$Res, _$IAuthTokenImpl>
    implements _$$IAuthTokenImplCopyWith<$Res> {
  __$$IAuthTokenImplCopyWithImpl(_$IAuthTokenImpl _value, $Res Function(_$IAuthTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? grantType = freezed,
    Object? scope = freezed,
    Object? clientId = freezed,
    Object? clientSecret = freezed,
  }) {
    return _then(_$IAuthTokenImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      grantType: freezed == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IAuthTokenImpl implements _IAuthToken {
  const _$IAuthTokenImpl(
      {required this.username,
      required this.password,
      @JsonKey(name: 'grant_type') this.grantType,
      @JsonKey(defaultValue: '') this.scope,
      @JsonKey(name: 'client_id') this.clientId,
      @JsonKey(name: 'client_secret') this.clientSecret});

  factory _$IAuthTokenImpl.fromJson(Map<String, dynamic> json) => _$$IAuthTokenImplFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  @JsonKey(name: 'grant_type')
  final String? grantType;
  @override
  @JsonKey(defaultValue: '')
  final String? scope;
  @override
  @JsonKey(name: 'client_id')
  final String? clientId;
  @override
  @JsonKey(name: 'client_secret')
  final String? clientSecret;

  @override
  String toString() {
    return 'IAuthToken(username: $username, password: $password, grantType: $grantType, scope: $scope, clientId: $clientId, clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IAuthTokenImpl &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.grantType, grantType) || other.grantType == grantType) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.clientId, clientId) || other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) || other.clientSecret == clientSecret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, password, grantType, scope, clientId, clientSecret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IAuthTokenImplCopyWith<_$IAuthTokenImpl> get copyWith =>
      __$$IAuthTokenImplCopyWithImpl<_$IAuthTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IAuthTokenImplToJson(
      this,
    );
  }
}

abstract class _IAuthToken implements IAuthToken {
  const factory _IAuthToken(
      {required final String username,
      required final String password,
      @JsonKey(name: 'grant_type') final String? grantType,
      @JsonKey(defaultValue: '') final String? scope,
      @JsonKey(name: 'client_id') final String? clientId,
      @JsonKey(name: 'client_secret') final String? clientSecret}) = _$IAuthTokenImpl;

  factory _IAuthToken.fromJson(Map<String, dynamic> json) = _$IAuthTokenImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(name: 'grant_type')
  String? get grantType;
  @override
  @JsonKey(defaultValue: '')
  String? get scope;
  @override
  @JsonKey(name: 'client_id')
  String? get clientId;
  @override
  @JsonKey(name: 'client_secret')
  String? get clientSecret;
  @override
  @JsonKey(ignore: true)
  _$$IAuthTokenImplCopyWith<_$IAuthTokenImpl> get copyWith => throw _privateConstructorUsedError;
}
