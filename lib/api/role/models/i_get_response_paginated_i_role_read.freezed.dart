// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_get_response_paginated_i_role_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IGetResponsePaginatedIRoleRead _$IGetResponsePaginatedIRoleReadFromJson(
    Map<String, dynamic> json) {
  return _IGetResponsePaginatedIRoleRead.fromJson(json);
}

/// @nodoc
mixin _$IGetResponsePaginatedIRoleRead {
  PageBaseDataTypeIRoleRead get data => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'Data got correctly')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IGetResponsePaginatedIRoleReadCopyWith<IGetResponsePaginatedIRoleRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGetResponsePaginatedIRoleReadCopyWith<$Res> {
  factory $IGetResponsePaginatedIRoleReadCopyWith(
          IGetResponsePaginatedIRoleRead value,
          $Res Function(IGetResponsePaginatedIRoleRead) then) =
      _$IGetResponsePaginatedIRoleReadCopyWithImpl<$Res,
          IGetResponsePaginatedIRoleRead>;
  @useResult
  $Res call(
      {PageBaseDataTypeIRoleRead data,
      @JsonKey(defaultValue: 'Data got correctly') String? message,
      @JsonKey(defaultValue: {}) Object? meta});

  $PageBaseDataTypeIRoleReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IGetResponsePaginatedIRoleReadCopyWithImpl<$Res,
        $Val extends IGetResponsePaginatedIRoleRead>
    implements $IGetResponsePaginatedIRoleReadCopyWith<$Res> {
  _$IGetResponsePaginatedIRoleReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PageBaseDataTypeIRoleRead,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta ? _value.meta : meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageBaseDataTypeIRoleReadCopyWith<$Res> get data {
    return $PageBaseDataTypeIRoleReadCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IGetResponsePaginatedIRoleReadCopyWith<$Res>
    implements $IGetResponsePaginatedIRoleReadCopyWith<$Res> {
  factory _$$_IGetResponsePaginatedIRoleReadCopyWith(
          _$_IGetResponsePaginatedIRoleRead value,
          $Res Function(_$_IGetResponsePaginatedIRoleRead) then) =
      __$$_IGetResponsePaginatedIRoleReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageBaseDataTypeIRoleRead data,
      @JsonKey(defaultValue: 'Data got correctly') String? message,
      @JsonKey(defaultValue: {}) Object? meta});

  @override
  $PageBaseDataTypeIRoleReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IGetResponsePaginatedIRoleReadCopyWithImpl<$Res>
    extends _$IGetResponsePaginatedIRoleReadCopyWithImpl<$Res,
        _$_IGetResponsePaginatedIRoleRead>
    implements _$$_IGetResponsePaginatedIRoleReadCopyWith<$Res> {
  __$$_IGetResponsePaginatedIRoleReadCopyWithImpl(
      _$_IGetResponsePaginatedIRoleRead _value,
      $Res Function(_$_IGetResponsePaginatedIRoleRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_IGetResponsePaginatedIRoleRead(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PageBaseDataTypeIRoleRead,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta ? _value.meta : meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IGetResponsePaginatedIRoleRead
    implements _IGetResponsePaginatedIRoleRead {
  const _$_IGetResponsePaginatedIRoleRead(
      {required this.data,
      @JsonKey(defaultValue: 'Data got correctly') this.message,
      @JsonKey(defaultValue: {}) this.meta});

  factory _$_IGetResponsePaginatedIRoleRead.fromJson(
          Map<String, dynamic> json) =>
      _$$_IGetResponsePaginatedIRoleReadFromJson(json);

  @override
  final PageBaseDataTypeIRoleRead data;
  @override
  @JsonKey(defaultValue: 'Data got correctly')
  final String? message;
  @override
  @JsonKey(defaultValue: {})
  final Object? meta;

  @override
  String toString() {
    return 'IGetResponsePaginatedIRoleRead(data: $data, message: $message, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IGetResponsePaginatedIRoleRead &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, message, const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IGetResponsePaginatedIRoleReadCopyWith<_$_IGetResponsePaginatedIRoleRead>
      get copyWith => __$$_IGetResponsePaginatedIRoleReadCopyWithImpl<
          _$_IGetResponsePaginatedIRoleRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IGetResponsePaginatedIRoleReadToJson(
      this,
    );
  }
}

abstract class _IGetResponsePaginatedIRoleRead
    implements IGetResponsePaginatedIRoleRead {
  const factory _IGetResponsePaginatedIRoleRead(
          {required final PageBaseDataTypeIRoleRead data,
          @JsonKey(defaultValue: 'Data got correctly') final String? message,
          @JsonKey(defaultValue: {}) final Object? meta}) =
      _$_IGetResponsePaginatedIRoleRead;

  factory _IGetResponsePaginatedIRoleRead.fromJson(Map<String, dynamic> json) =
      _$_IGetResponsePaginatedIRoleRead.fromJson;

  @override
  PageBaseDataTypeIRoleRead get data;
  @override
  @JsonKey(defaultValue: 'Data got correctly')
  String? get message;
  @override
  @JsonKey(defaultValue: {})
  Object? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_IGetResponsePaginatedIRoleReadCopyWith<_$_IGetResponsePaginatedIRoleRead>
      get copyWith => throw _privateConstructorUsedError;
}
