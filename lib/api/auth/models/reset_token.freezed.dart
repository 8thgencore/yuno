// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResetToken _$ResetTokenFromJson(Map<String, dynamic> json) {
  return _ResetToken.fromJson(json);
}

/// @nodoc
mixin _$ResetToken {
  @JsonKey(name: 'reset_token')
  String get resetToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetTokenCopyWith<ResetToken> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetTokenCopyWith<$Res> {
  factory $ResetTokenCopyWith(ResetToken value, $Res Function(ResetToken) then) =
      _$ResetTokenCopyWithImpl<$Res, ResetToken>;
  @useResult
  $Res call({@JsonKey(name: 'reset_token') String resetToken});
}

/// @nodoc
class _$ResetTokenCopyWithImpl<$Res, $Val extends ResetToken> implements $ResetTokenCopyWith<$Res> {
  _$ResetTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resetToken = null,
  }) {
    return _then(_value.copyWith(
      resetToken: null == resetToken
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetTokenCopyWith<$Res> implements $ResetTokenCopyWith<$Res> {
  factory _$$_ResetTokenCopyWith(_$_ResetToken value, $Res Function(_$_ResetToken) then) =
      __$$_ResetTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'reset_token') String resetToken});
}

/// @nodoc
class __$$_ResetTokenCopyWithImpl<$Res> extends _$ResetTokenCopyWithImpl<$Res, _$_ResetToken>
    implements _$$_ResetTokenCopyWith<$Res> {
  __$$_ResetTokenCopyWithImpl(_$_ResetToken _value, $Res Function(_$_ResetToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resetToken = null,
  }) {
    return _then(_$_ResetToken(
      resetToken: null == resetToken
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResetToken implements _ResetToken {
  const _$_ResetToken({@JsonKey(name: 'reset_token') required this.resetToken});

  factory _$_ResetToken.fromJson(Map<String, dynamic> json) => _$$_ResetTokenFromJson(json);

  @override
  @JsonKey(name: 'reset_token')
  final String resetToken;

  @override
  String toString() {
    return 'ResetToken(resetToken: $resetToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetToken &&
            (identical(other.resetToken, resetToken) || other.resetToken == resetToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resetToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetTokenCopyWith<_$_ResetToken> get copyWith =>
      __$$_ResetTokenCopyWithImpl<_$_ResetToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResetTokenToJson(
      this,
    );
  }
}

abstract class _ResetToken implements ResetToken {
  const factory _ResetToken({@JsonKey(name: 'reset_token') required final String resetToken}) =
      _$_ResetToken;

  factory _ResetToken.fromJson(Map<String, dynamic> json) = _$_ResetToken.fromJson;

  @override
  @JsonKey(name: 'reset_token')
  String get resetToken;
  @override
  @JsonKey(ignore: true)
  _$$_ResetTokenCopyWith<_$_ResetToken> get copyWith => throw _privateConstructorUsedError;
}
