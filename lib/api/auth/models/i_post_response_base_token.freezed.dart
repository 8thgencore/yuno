// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_post_response_base_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IPostResponseBaseToken _$IPostResponseBaseTokenFromJson(
    Map<String, dynamic> json) {
  return _IPostResponseBaseToken.fromJson(json);
}

/// @nodoc
mixin _$IPostResponseBaseToken {
  @JsonKey(defaultValue: 'Data created correctly')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;
  Token get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IPostResponseBaseTokenCopyWith<IPostResponseBaseToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPostResponseBaseTokenCopyWith<$Res> {
  factory $IPostResponseBaseTokenCopyWith(IPostResponseBaseToken value,
          $Res Function(IPostResponseBaseToken) then) =
      _$IPostResponseBaseTokenCopyWithImpl<$Res, IPostResponseBaseToken>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data created correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      Token data});

  $TokenCopyWith<$Res> get data;
}

/// @nodoc
class _$IPostResponseBaseTokenCopyWithImpl<$Res,
        $Val extends IPostResponseBaseToken>
    implements $IPostResponseBaseTokenCopyWith<$Res> {
  _$IPostResponseBaseTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Token,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get data {
    return $TokenCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IPostResponseBaseTokenCopyWith<$Res>
    implements $IPostResponseBaseTokenCopyWith<$Res> {
  factory _$$_IPostResponseBaseTokenCopyWith(_$_IPostResponseBaseToken value,
          $Res Function(_$_IPostResponseBaseToken) then) =
      __$$_IPostResponseBaseTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data created correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      Token data});

  @override
  $TokenCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IPostResponseBaseTokenCopyWithImpl<$Res>
    extends _$IPostResponseBaseTokenCopyWithImpl<$Res,
        _$_IPostResponseBaseToken>
    implements _$$_IPostResponseBaseTokenCopyWith<$Res> {
  __$$_IPostResponseBaseTokenCopyWithImpl(_$_IPostResponseBaseToken _value,
      $Res Function(_$_IPostResponseBaseToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IPostResponseBaseToken(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IPostResponseBaseToken implements _IPostResponseBaseToken {
  const _$_IPostResponseBaseToken(
      {@JsonKey(defaultValue: 'Data created correctly') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IPostResponseBaseToken.fromJson(Map<String, dynamic> json) =>
      _$$_IPostResponseBaseTokenFromJson(json);

  @override
  @JsonKey(defaultValue: 'Data created correctly')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final Token data;

  @override
  String toString() {
    return 'IPostResponseBaseToken(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IPostResponseBaseToken &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(meta), data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IPostResponseBaseTokenCopyWith<_$_IPostResponseBaseToken> get copyWith =>
      __$$_IPostResponseBaseTokenCopyWithImpl<_$_IPostResponseBaseToken>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IPostResponseBaseTokenToJson(
      this,
    );
  }
}

abstract class _IPostResponseBaseToken implements IPostResponseBaseToken {
  const factory _IPostResponseBaseToken(
      {@JsonKey(defaultValue: 'Data created correctly')
          required final String message,
      @JsonKey(defaultValue: {})
          required final Object meta,
      required final Token data}) = _$_IPostResponseBaseToken;

  factory _IPostResponseBaseToken.fromJson(Map<String, dynamic> json) =
      _$_IPostResponseBaseToken.fromJson;

  @override
  @JsonKey(defaultValue: 'Data created correctly')
  String get message;
  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  Token get data;
  @override
  @JsonKey(ignore: true)
  _$$_IPostResponseBaseTokenCopyWith<_$_IPostResponseBaseToken> get copyWith =>
      throw _privateConstructorUsedError;
}
