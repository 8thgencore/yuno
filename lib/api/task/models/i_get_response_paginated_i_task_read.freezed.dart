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
  String? get message => throw _privateConstructorUsedError;
  Object? get meta => throw _privateConstructorUsedError;
  PageBaseDataTypeITaskRead get data => throw _privateConstructorUsedError;

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
  $Res call({String? message, Object? meta, PageBaseDataTypeITaskRead data});

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
    Object? message = freezed,
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PageBaseDataTypeITaskRead,
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
  $Res call({String? message, Object? meta, PageBaseDataTypeITaskRead data});

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
    Object? message = freezed,
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_IGetResponsePaginatedITaskRead(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PageBaseDataTypeITaskRead,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IGetResponsePaginatedITaskRead
    implements _IGetResponsePaginatedITaskRead {
  const _$_IGetResponsePaginatedITaskRead(
      {this.message = 'Data got correctly',
      this.meta = const {},
      required this.data});

  factory _$_IGetResponsePaginatedITaskRead.fromJson(
          Map<String, dynamic> json) =>
      _$$_IGetResponsePaginatedITaskReadFromJson(json);

  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final Object? meta;
  @override
  final PageBaseDataTypeITaskRead data;

  @override
  String toString() {
    return 'IGetResponsePaginatedITaskRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IGetResponsePaginatedITaskRead &&
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
          {final String? message,
          final Object? meta,
          required final PageBaseDataTypeITaskRead data}) =
      _$_IGetResponsePaginatedITaskRead;

  factory _IGetResponsePaginatedITaskRead.fromJson(Map<String, dynamic> json) =
      _$_IGetResponsePaginatedITaskRead.fromJson;

  @override
  String? get message;
  @override
  Object? get meta;
  @override
  PageBaseDataTypeITaskRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IGetResponsePaginatedITaskReadCopyWith<_$_IGetResponsePaginatedITaskRead>
      get copyWith => throw _privateConstructorUsedError;
}