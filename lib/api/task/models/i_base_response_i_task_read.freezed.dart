// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_base_response_i_task_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IBaseResponseITaskRead _$IBaseResponseITaskReadFromJson(
    Map<String, dynamic> json) {
  return _IBaseResponseITaskRead.fromJson(json);
}

/// @nodoc
mixin _$IBaseResponseITaskRead {
  @JsonKey(defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;
  ITaskRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IBaseResponseITaskReadCopyWith<IBaseResponseITaskRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IBaseResponseITaskReadCopyWith<$Res> {
  factory $IBaseResponseITaskReadCopyWith(IBaseResponseITaskRead value,
          $Res Function(IBaseResponseITaskRead) then) =
      _$IBaseResponseITaskReadCopyWithImpl<$Res, IBaseResponseITaskRead>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String message,
      @JsonKey(defaultValue: {}) Object meta,
      ITaskRead data});

  $ITaskReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IBaseResponseITaskReadCopyWithImpl<$Res,
        $Val extends IBaseResponseITaskRead>
    implements $IBaseResponseITaskReadCopyWith<$Res> {
  _$IBaseResponseITaskReadCopyWithImpl(this._value, this._then);

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
abstract class _$$_IBaseResponseITaskReadCopyWith<$Res>
    implements $IBaseResponseITaskReadCopyWith<$Res> {
  factory _$$_IBaseResponseITaskReadCopyWith(_$_IBaseResponseITaskRead value,
          $Res Function(_$_IBaseResponseITaskRead) then) =
      __$$_IBaseResponseITaskReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String message,
      @JsonKey(defaultValue: {}) Object meta,
      ITaskRead data});

  @override
  $ITaskReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IBaseResponseITaskReadCopyWithImpl<$Res>
    extends _$IBaseResponseITaskReadCopyWithImpl<$Res,
        _$_IBaseResponseITaskRead>
    implements _$$_IBaseResponseITaskReadCopyWith<$Res> {
  __$$_IBaseResponseITaskReadCopyWithImpl(_$_IBaseResponseITaskRead _value,
      $Res Function(_$_IBaseResponseITaskRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IBaseResponseITaskRead(
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
class _$_IBaseResponseITaskRead implements _IBaseResponseITaskRead {
  const _$_IBaseResponseITaskRead(
      {@JsonKey(defaultValue: '') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IBaseResponseITaskRead.fromJson(Map<String, dynamic> json) =>
      _$$_IBaseResponseITaskReadFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final ITaskRead data;

  @override
  String toString() {
    return 'IBaseResponseITaskRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IBaseResponseITaskRead &&
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
  _$$_IBaseResponseITaskReadCopyWith<_$_IBaseResponseITaskRead> get copyWith =>
      __$$_IBaseResponseITaskReadCopyWithImpl<_$_IBaseResponseITaskRead>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IBaseResponseITaskReadToJson(
      this,
    );
  }
}

abstract class _IBaseResponseITaskRead implements IBaseResponseITaskRead {
  const factory _IBaseResponseITaskRead(
      {@JsonKey(defaultValue: '') required final String message,
      @JsonKey(defaultValue: {}) required final Object meta,
      required final ITaskRead data}) = _$_IBaseResponseITaskRead;

  factory _IBaseResponseITaskRead.fromJson(Map<String, dynamic> json) =
      _$_IBaseResponseITaskRead.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get message;
  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  ITaskRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IBaseResponseITaskReadCopyWith<_$_IBaseResponseITaskRead> get copyWith =>
      throw _privateConstructorUsedError;
}
