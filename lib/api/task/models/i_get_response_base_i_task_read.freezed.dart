// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_get_response_base_i_task_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IGetResponseBaseITaskRead _$IGetResponseBaseITaskReadFromJson(
    Map<String, dynamic> json) {
  return _IGetResponseBaseITaskRead.fromJson(json);
}

/// @nodoc
mixin _$IGetResponseBaseITaskRead {
  String get message => throw _privateConstructorUsedError;
  Object get meta => throw _privateConstructorUsedError;
  ITaskRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IGetResponseBaseITaskReadCopyWith<IGetResponseBaseITaskRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGetResponseBaseITaskReadCopyWith<$Res> {
  factory $IGetResponseBaseITaskReadCopyWith(IGetResponseBaseITaskRead value,
          $Res Function(IGetResponseBaseITaskRead) then) =
      _$IGetResponseBaseITaskReadCopyWithImpl<$Res, IGetResponseBaseITaskRead>;
  @useResult
  $Res call({String message, Object meta, ITaskRead data});

  $ITaskReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IGetResponseBaseITaskReadCopyWithImpl<$Res,
        $Val extends IGetResponseBaseITaskRead>
    implements $IGetResponseBaseITaskReadCopyWith<$Res> {
  _$IGetResponseBaseITaskReadCopyWithImpl(this._value, this._then);

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
              as ITaskRead,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ITaskReadCopyWith<$Res> get data {
    return $ITaskReadCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IGetResponseBaseITaskReadCopyWith<$Res>
    implements $IGetResponseBaseITaskReadCopyWith<$Res> {
  factory _$$_IGetResponseBaseITaskReadCopyWith(
          _$_IGetResponseBaseITaskRead value,
          $Res Function(_$_IGetResponseBaseITaskRead) then) =
      __$$_IGetResponseBaseITaskReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object meta, ITaskRead data});

  @override
  $ITaskReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IGetResponseBaseITaskReadCopyWithImpl<$Res>
    extends _$IGetResponseBaseITaskReadCopyWithImpl<$Res,
        _$_IGetResponseBaseITaskRead>
    implements _$$_IGetResponseBaseITaskReadCopyWith<$Res> {
  __$$_IGetResponseBaseITaskReadCopyWithImpl(
      _$_IGetResponseBaseITaskRead _value,
      $Res Function(_$_IGetResponseBaseITaskRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IGetResponseBaseITaskRead(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ITaskRead,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IGetResponseBaseITaskRead implements _IGetResponseBaseITaskRead {
  const _$_IGetResponseBaseITaskRead(
      {required this.message,
      required this.meta,
      required this.data});

  factory _$_IGetResponseBaseITaskRead.fromJson(Map<String, dynamic> json) =>
      _$$_IGetResponseBaseITaskReadFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final Object meta;
  @override
  final ITaskRead data;

  @override
  String toString() {
    return 'IGetResponseBaseITaskRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IGetResponseBaseITaskRead &&
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
  _$$_IGetResponseBaseITaskReadCopyWith<_$_IGetResponseBaseITaskRead>
      get copyWith => __$$_IGetResponseBaseITaskReadCopyWithImpl<
          _$_IGetResponseBaseITaskRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IGetResponseBaseITaskReadToJson(
      this,
    );
  }
}

abstract class _IGetResponseBaseITaskRead implements IGetResponseBaseITaskRead {
  const factory _IGetResponseBaseITaskRead(
      {required final String message,
      required final Object meta,
      required final ITaskRead data}) = _$_IGetResponseBaseITaskRead;

  factory _IGetResponseBaseITaskRead.fromJson(Map<String, dynamic> json) =
      _$_IGetResponseBaseITaskRead.fromJson;

  @override
  String get message;
  @override
  Object get meta;
  @override
  ITaskRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IGetResponseBaseITaskReadCopyWith<_$_IGetResponseBaseITaskRead>
      get copyWith => throw _privateConstructorUsedError;
}
