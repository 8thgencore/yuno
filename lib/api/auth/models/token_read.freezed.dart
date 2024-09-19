// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenRead _$TokenReadFromJson(Map<String, dynamic> json) {
  return _TokenRead.fromJson(json);
}

/// @nodoc
mixin _$TokenRead {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;

  /// Serializes this TokenRead to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenReadCopyWith<TokenRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenReadCopyWith<$Res> {
  factory $TokenReadCopyWith(TokenRead value, $Res Function(TokenRead) then) =
      _$TokenReadCopyWithImpl<$Res, TokenRead>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class _$TokenReadCopyWithImpl<$Res, $Val extends TokenRead>
    implements $TokenReadCopyWith<$Res> {
  _$TokenReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenReadImplCopyWith<$Res>
    implements $TokenReadCopyWith<$Res> {
  factory _$$TokenReadImplCopyWith(
          _$TokenReadImpl value, $Res Function(_$TokenReadImpl) then) =
      __$$TokenReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class __$$TokenReadImplCopyWithImpl<$Res>
    extends _$TokenReadCopyWithImpl<$Res, _$TokenReadImpl>
    implements _$$TokenReadImplCopyWith<$Res> {
  __$$TokenReadImplCopyWithImpl(
      _$TokenReadImpl _value, $Res Function(_$TokenReadImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
  }) {
    return _then(_$TokenReadImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenReadImpl implements _TokenRead {
  const _$TokenReadImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'token_type') required this.tokenType});

  factory _$TokenReadImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenReadImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;

  @override
  String toString() {
    return 'TokenRead(accessToken: $accessToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenReadImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType);

  /// Create a copy of TokenRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenReadImplCopyWith<_$TokenReadImpl> get copyWith =>
      __$$TokenReadImplCopyWithImpl<_$TokenReadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenReadImplToJson(
      this,
    );
  }
}

abstract class _TokenRead implements TokenRead {
  const factory _TokenRead(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'token_type') required final String tokenType}) =
      _$TokenReadImpl;

  factory _TokenRead.fromJson(Map<String, dynamic> json) =
      _$TokenReadImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;

  /// Create a copy of TokenRead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenReadImplCopyWith<_$TokenReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
