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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenRead _$TokenReadFromJson(Map<String, dynamic> json) {
  return _TokenRead.fromJson(json);
}

/// @nodoc
mixin _$TokenRead {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_TokenReadCopyWith<$Res> implements $TokenReadCopyWith<$Res> {
  factory _$$_TokenReadCopyWith(
          _$_TokenRead value, $Res Function(_$_TokenRead) then) =
      __$$_TokenReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class __$$_TokenReadCopyWithImpl<$Res>
    extends _$TokenReadCopyWithImpl<$Res, _$_TokenRead>
    implements _$$_TokenReadCopyWith<$Res> {
  __$$_TokenReadCopyWithImpl(
      _$_TokenRead _value, $Res Function(_$_TokenRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
  }) {
    return _then(_$_TokenRead(
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
class _$_TokenRead implements _TokenRead {
  const _$_TokenRead(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'token_type') required this.tokenType});

  factory _$_TokenRead.fromJson(Map<String, dynamic> json) =>
      _$$_TokenReadFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenRead &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenReadCopyWith<_$_TokenRead> get copyWith =>
      __$$_TokenReadCopyWithImpl<_$_TokenRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenReadToJson(
      this,
    );
  }
}

abstract class _TokenRead implements TokenRead {
  const factory _TokenRead(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'token_type') required final String tokenType}) =
      _$_TokenRead;

  factory _TokenRead.fromJson(Map<String, dynamic> json) =
      _$_TokenRead.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(ignore: true)
  _$$_TokenReadCopyWith<_$_TokenRead> get copyWith =>
      throw _privateConstructorUsedError;
}
