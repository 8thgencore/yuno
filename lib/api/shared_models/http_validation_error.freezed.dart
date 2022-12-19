// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_validation_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HTTPValidationError _$HTTPValidationErrorFromJson(Map<String, dynamic> json) {
  return _HTTPValidationError.fromJson(json);
}

/// @nodoc
mixin _$HTTPValidationError {
  dynamic get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HTTPValidationErrorCopyWith<HTTPValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HTTPValidationErrorCopyWith<$Res> {
  factory $HTTPValidationErrorCopyWith(
          HTTPValidationError value, $Res Function(HTTPValidationError) then) =
      _$HTTPValidationErrorCopyWithImpl<$Res, HTTPValidationError>;
  @useResult
  $Res call({dynamic detail});
}

/// @nodoc
class _$HTTPValidationErrorCopyWithImpl<$Res, $Val extends HTTPValidationError>
    implements $HTTPValidationErrorCopyWith<$Res> {
  _$HTTPValidationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HTTPValidationErrorCopyWith<$Res>
    implements $HTTPValidationErrorCopyWith<$Res> {
  factory _$$_HTTPValidationErrorCopyWith(_$_HTTPValidationError value,
          $Res Function(_$_HTTPValidationError) then) =
      __$$_HTTPValidationErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic detail});
}

/// @nodoc
class __$$_HTTPValidationErrorCopyWithImpl<$Res>
    extends _$HTTPValidationErrorCopyWithImpl<$Res, _$_HTTPValidationError>
    implements _$$_HTTPValidationErrorCopyWith<$Res> {
  __$$_HTTPValidationErrorCopyWithImpl(_$_HTTPValidationError _value,
      $Res Function(_$_HTTPValidationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_$_HTTPValidationError(
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HTTPValidationError implements _HTTPValidationError {
  const _$_HTTPValidationError({required this.detail});

  factory _$_HTTPValidationError.fromJson(Map<String, dynamic> json) =>
      _$$_HTTPValidationErrorFromJson(json);

  @override
  final dynamic detail;

  @override
  String toString() {
    return 'HTTPValidationError(detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HTTPValidationError &&
            const DeepCollectionEquality().equals(other.detail, detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(detail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HTTPValidationErrorCopyWith<_$_HTTPValidationError> get copyWith =>
      __$$_HTTPValidationErrorCopyWithImpl<_$_HTTPValidationError>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HTTPValidationErrorToJson(
      this,
    );
  }
}

abstract class _HTTPValidationError implements HTTPValidationError {
  const factory _HTTPValidationError({required final dynamic detail}) =
      _$_HTTPValidationError;

  factory _HTTPValidationError.fromJson(Map<String, dynamic> json) =
      _$_HTTPValidationError.fromJson;

  @override
  dynamic get detail;
  @override
  @JsonKey(ignore: true)
  _$$_HTTPValidationErrorCopyWith<_$_HTTPValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}
