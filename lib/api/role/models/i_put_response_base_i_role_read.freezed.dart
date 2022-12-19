// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_put_response_base_i_role_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IPutResponseBaseIRoleRead _$IPutResponseBaseIRoleReadFromJson(
    Map<String, dynamic> json) {
  return _IPutResponseBaseIRoleRead.fromJson(json);
}

/// @nodoc
mixin _$IPutResponseBaseIRoleRead {
  @JsonKey(defaultValue: 'Data updated correctly')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;
  IRoleRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IPutResponseBaseIRoleReadCopyWith<IPutResponseBaseIRoleRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPutResponseBaseIRoleReadCopyWith<$Res> {
  factory $IPutResponseBaseIRoleReadCopyWith(IPutResponseBaseIRoleRead value,
          $Res Function(IPutResponseBaseIRoleRead) then) =
      _$IPutResponseBaseIRoleReadCopyWithImpl<$Res, IPutResponseBaseIRoleRead>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data updated correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IRoleRead data});

  $IRoleReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IPutResponseBaseIRoleReadCopyWithImpl<$Res,
        $Val extends IPutResponseBaseIRoleRead>
    implements $IPutResponseBaseIRoleReadCopyWith<$Res> {
  _$IPutResponseBaseIRoleReadCopyWithImpl(this._value, this._then);

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
              as IRoleRead,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IRoleReadCopyWith<$Res> get data {
    return $IRoleReadCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IPutResponseBaseIRoleReadCopyWith<$Res>
    implements $IPutResponseBaseIRoleReadCopyWith<$Res> {
  factory _$$_IPutResponseBaseIRoleReadCopyWith(
          _$_IPutResponseBaseIRoleRead value,
          $Res Function(_$_IPutResponseBaseIRoleRead) then) =
      __$$_IPutResponseBaseIRoleReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data updated correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IRoleRead data});

  @override
  $IRoleReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IPutResponseBaseIRoleReadCopyWithImpl<$Res>
    extends _$IPutResponseBaseIRoleReadCopyWithImpl<$Res,
        _$_IPutResponseBaseIRoleRead>
    implements _$$_IPutResponseBaseIRoleReadCopyWith<$Res> {
  __$$_IPutResponseBaseIRoleReadCopyWithImpl(
      _$_IPutResponseBaseIRoleRead _value,
      $Res Function(_$_IPutResponseBaseIRoleRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IPutResponseBaseIRoleRead(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IRoleRead,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IPutResponseBaseIRoleRead implements _IPutResponseBaseIRoleRead {
  const _$_IPutResponseBaseIRoleRead(
      {@JsonKey(defaultValue: 'Data updated correctly') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IPutResponseBaseIRoleRead.fromJson(Map<String, dynamic> json) =>
      _$$_IPutResponseBaseIRoleReadFromJson(json);

  @override
  @JsonKey(defaultValue: 'Data updated correctly')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final IRoleRead data;

  @override
  String toString() {
    return 'IPutResponseBaseIRoleRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IPutResponseBaseIRoleRead &&
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
  _$$_IPutResponseBaseIRoleReadCopyWith<_$_IPutResponseBaseIRoleRead>
      get copyWith => __$$_IPutResponseBaseIRoleReadCopyWithImpl<
          _$_IPutResponseBaseIRoleRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IPutResponseBaseIRoleReadToJson(
      this,
    );
  }
}

abstract class _IPutResponseBaseIRoleRead implements IPutResponseBaseIRoleRead {
  const factory _IPutResponseBaseIRoleRead(
      {@JsonKey(defaultValue: 'Data updated correctly')
          required final String message,
      @JsonKey(defaultValue: {})
          required final Object meta,
      required final IRoleRead data}) = _$_IPutResponseBaseIRoleRead;

  factory _IPutResponseBaseIRoleRead.fromJson(Map<String, dynamic> json) =
      _$_IPutResponseBaseIRoleRead.fromJson;

  @override
  @JsonKey(defaultValue: 'Data updated correctly')
  String get message;
  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  IRoleRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IPutResponseBaseIRoleReadCopyWith<_$_IPutResponseBaseIRoleRead>
      get copyWith => throw _privateConstructorUsedError;
}
