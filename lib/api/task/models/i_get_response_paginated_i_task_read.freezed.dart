// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_get_response_paginated_i_task_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IGetResponsePaginatedITaskRead _$IGetResponsePaginatedITaskReadFromJson(
    Map<String, dynamic> json) {
  return _IGetResponsePaginatedITaskRead.fromJson(json);
}

/// @nodoc
mixin _$IGetResponsePaginatedITaskRead {
  PageBaseDataTypeITaskRead get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Object? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IGetResponsePaginatedITaskReadCopyWith<IGetResponsePaginatedITaskRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGetResponsePaginatedITaskReadCopyWith<$Res> {
  factory $IGetResponsePaginatedITaskReadCopyWith(
          IGetResponsePaginatedITaskRead value,
          $Res Function(IGetResponsePaginatedITaskRead) then) =
      _$IGetResponsePaginatedITaskReadCopyWithImpl<$Res,
          IGetResponsePaginatedITaskRead>;
  @useResult
  $Res call({PageBaseDataTypeITaskRead data, String? message, Object? meta});

  $PageBaseDataTypeITaskReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IGetResponsePaginatedITaskReadCopyWithImpl<$Res,
        $Val extends IGetResponsePaginatedITaskRead>
    implements $IGetResponsePaginatedITaskReadCopyWith<$Res> {
  _$IGetResponsePaginatedITaskReadCopyWithImpl(this._value, this._then);

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
              as PageBaseDataTypeITaskRead,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta ? _value.meta : meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageBaseDataTypeITaskReadCopyWith<$Res> get data {
    return $PageBaseDataTypeITaskReadCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IGetResponsePaginatedITaskReadCopyWith<$Res>
    implements $IGetResponsePaginatedITaskReadCopyWith<$Res> {
  factory _$$_IGetResponsePaginatedITaskReadCopyWith(
          _$_IGetResponsePaginatedITaskRead value,
          $Res Function(_$_IGetResponsePaginatedITaskRead) then) =
      __$$_IGetResponsePaginatedITaskReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageBaseDataTypeITaskRead data, String? message, Object? meta});

  @override
  $PageBaseDataTypeITaskReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IGetResponsePaginatedITaskReadCopyWithImpl<$Res>
    extends _$IGetResponsePaginatedITaskReadCopyWithImpl<$Res,
        _$_IGetResponsePaginatedITaskRead>
    implements _$$_IGetResponsePaginatedITaskReadCopyWith<$Res> {
  __$$_IGetResponsePaginatedITaskReadCopyWithImpl(
      _$_IGetResponsePaginatedITaskRead _value,
      $Res Function(_$_IGetResponsePaginatedITaskRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_IGetResponsePaginatedITaskRead(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PageBaseDataTypeITaskRead,
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
class _$_IGetResponsePaginatedITaskRead
    implements _IGetResponsePaginatedITaskRead {
  const _$_IGetResponsePaginatedITaskRead(
      {required this.data,
      this.message,
      this.meta = const {}});

  factory _$_IGetResponsePaginatedITaskRead.fromJson(
          Map<String, dynamic> json) =>
      _$$_IGetResponsePaginatedITaskReadFromJson(json);

  @override
  final PageBaseDataTypeITaskRead data;
  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final Object? meta;

  @override
  String toString() {
    return 'IGetResponsePaginatedITaskRead(data: $data, message: $message, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IGetResponsePaginatedITaskRead &&
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
  _$$_IGetResponsePaginatedITaskReadCopyWith<_$_IGetResponsePaginatedITaskRead>
      get copyWith => __$$_IGetResponsePaginatedITaskReadCopyWithImpl<
          _$_IGetResponsePaginatedITaskRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IGetResponsePaginatedITaskReadToJson(
      this,
    );
  }
}

abstract class _IGetResponsePaginatedITaskRead
    implements IGetResponsePaginatedITaskRead {
  const factory _IGetResponsePaginatedITaskRead(
      {required final PageBaseDataTypeITaskRead data,
      final String? message,
      final Object? meta}) = _$_IGetResponsePaginatedITaskRead;

  factory _IGetResponsePaginatedITaskRead.fromJson(Map<String, dynamic> json) =
      _$_IGetResponsePaginatedITaskRead.fromJson;

  @override
  PageBaseDataTypeITaskRead get data;
  @override
  String? get message;
  @override
  Object? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_IGetResponsePaginatedITaskReadCopyWith<_$_IGetResponsePaginatedITaskRead>
      get copyWith => throw _privateConstructorUsedError;
}
