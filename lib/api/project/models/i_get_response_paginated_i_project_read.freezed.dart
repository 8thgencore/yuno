// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_get_response_paginated_i_project_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IGetResponsePaginatedIProjectRead _$IGetResponsePaginatedIProjectReadFromJson(
    Map<String, dynamic> json) {
  return _IGetResponsePaginatedIProjectRead.fromJson(json);
}

/// @nodoc
mixin _$IGetResponsePaginatedIProjectRead {
  PageBaseDataTypeIProjectRead get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Object? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IGetResponsePaginatedIProjectReadCopyWith<IGetResponsePaginatedIProjectRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGetResponsePaginatedIProjectReadCopyWith<$Res> {
  factory $IGetResponsePaginatedIProjectReadCopyWith(
          IGetResponsePaginatedIProjectRead value,
          $Res Function(IGetResponsePaginatedIProjectRead) then) =
      _$IGetResponsePaginatedIProjectReadCopyWithImpl<$Res,
          IGetResponsePaginatedIProjectRead>;
  @useResult
  $Res call({PageBaseDataTypeIProjectRead data, String? message, Object? meta});

  $PageBaseDataTypeIProjectReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IGetResponsePaginatedIProjectReadCopyWithImpl<$Res,
        $Val extends IGetResponsePaginatedIProjectRead>
    implements $IGetResponsePaginatedIProjectReadCopyWith<$Res> {
  _$IGetResponsePaginatedIProjectReadCopyWithImpl(this._value, this._then);

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
              as PageBaseDataTypeIProjectRead,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta ? _value.meta : meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageBaseDataTypeIProjectReadCopyWith<$Res> get data {
    return $PageBaseDataTypeIProjectReadCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IGetResponsePaginatedIProjectReadCopyWith<$Res>
    implements $IGetResponsePaginatedIProjectReadCopyWith<$Res> {
  factory _$$_IGetResponsePaginatedIProjectReadCopyWith(
          _$_IGetResponsePaginatedIProjectRead value,
          $Res Function(_$_IGetResponsePaginatedIProjectRead) then) =
      __$$_IGetResponsePaginatedIProjectReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageBaseDataTypeIProjectRead data, String? message, Object? meta});

  @override
  $PageBaseDataTypeIProjectReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IGetResponsePaginatedIProjectReadCopyWithImpl<$Res>
    extends _$IGetResponsePaginatedIProjectReadCopyWithImpl<$Res,
        _$_IGetResponsePaginatedIProjectRead>
    implements _$$_IGetResponsePaginatedIProjectReadCopyWith<$Res> {
  __$$_IGetResponsePaginatedIProjectReadCopyWithImpl(
      _$_IGetResponsePaginatedIProjectRead _value,
      $Res Function(_$_IGetResponsePaginatedIProjectRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_IGetResponsePaginatedIProjectRead(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PageBaseDataTypeIProjectRead,
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
class _$_IGetResponsePaginatedIProjectRead
    implements _IGetResponsePaginatedIProjectRead {
  const _$_IGetResponsePaginatedIProjectRead(
      {required this.data,
      this.message = 'Data got correctly',
      this.meta = const {}});

  factory _$_IGetResponsePaginatedIProjectRead.fromJson(
          Map<String, dynamic> json) =>
      _$$_IGetResponsePaginatedIProjectReadFromJson(json);

  @override
  final PageBaseDataTypeIProjectRead data;
  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final Object? meta;

  @override
  String toString() {
    return 'IGetResponsePaginatedIProjectRead(data: $data, message: $message, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IGetResponsePaginatedIProjectRead &&
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
  _$$_IGetResponsePaginatedIProjectReadCopyWith<
          _$_IGetResponsePaginatedIProjectRead>
      get copyWith => __$$_IGetResponsePaginatedIProjectReadCopyWithImpl<
          _$_IGetResponsePaginatedIProjectRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IGetResponsePaginatedIProjectReadToJson(
      this,
    );
  }
}

abstract class _IGetResponsePaginatedIProjectRead
    implements IGetResponsePaginatedIProjectRead {
  const factory _IGetResponsePaginatedIProjectRead(
      {required final PageBaseDataTypeIProjectRead data,
      final String? message,
      final Object? meta}) = _$_IGetResponsePaginatedIProjectRead;

  factory _IGetResponsePaginatedIProjectRead.fromJson(
          Map<String, dynamic> json) =
      _$_IGetResponsePaginatedIProjectRead.fromJson;

  @override
  PageBaseDataTypeIProjectRead get data;
  @override
  String? get message;
  @override
  Object? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_IGetResponsePaginatedIProjectReadCopyWith<
          _$_IGetResponsePaginatedIProjectRead>
      get copyWith => throw _privateConstructorUsedError;
}
