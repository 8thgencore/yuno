// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_post_response_base_i_task_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IPostResponseBaseITaskRead _$IPostResponseBaseITaskReadFromJson(
    Map<String, dynamic> json) {
  return _IPostResponseBaseITaskRead.fromJson(json);
}

/// @nodoc
mixin _$IPostResponseBaseITaskRead {
  String get message => throw _privateConstructorUsedError;
  Object get meta => throw _privateConstructorUsedError;
  ITaskRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IPostResponseBaseITaskReadCopyWith<IPostResponseBaseITaskRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPostResponseBaseITaskReadCopyWith<$Res> {
  factory $IPostResponseBaseITaskReadCopyWith(IPostResponseBaseITaskRead value,
          $Res Function(IPostResponseBaseITaskRead) then) =
      _$IPostResponseBaseITaskReadCopyWithImpl<$Res,
          IPostResponseBaseITaskRead>;
  @useResult
  $Res call({String message, Object meta, ITaskRead data});

  $ITaskReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IPostResponseBaseITaskReadCopyWithImpl<$Res,
        $Val extends IPostResponseBaseITaskRead>
    implements $IPostResponseBaseITaskReadCopyWith<$Res> {
  _$IPostResponseBaseITaskReadCopyWithImpl(this._value, this._then);

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
abstract class _$$_IPostResponseBaseITaskReadCopyWith<$Res>
    implements $IPostResponseBaseITaskReadCopyWith<$Res> {
  factory _$$_IPostResponseBaseITaskReadCopyWith(
          _$_IPostResponseBaseITaskRead value,
          $Res Function(_$_IPostResponseBaseITaskRead) then) =
      __$$_IPostResponseBaseITaskReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object meta, ITaskRead data});

  @override
  $ITaskReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IPostResponseBaseITaskReadCopyWithImpl<$Res>
    extends _$IPostResponseBaseITaskReadCopyWithImpl<$Res,
        _$_IPostResponseBaseITaskRead>
    implements _$$_IPostResponseBaseITaskReadCopyWith<$Res> {
  __$$_IPostResponseBaseITaskReadCopyWithImpl(
      _$_IPostResponseBaseITaskRead _value,
      $Res Function(_$_IPostResponseBaseITaskRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IPostResponseBaseITaskRead(
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
class _$_IPostResponseBaseITaskRead implements _IPostResponseBaseITaskRead {
  const _$_IPostResponseBaseITaskRead(
      {required this.message,
      required this.meta,
      required this.data});

  factory _$_IPostResponseBaseITaskRead.fromJson(Map<String, dynamic> json) =>
      _$$_IPostResponseBaseITaskReadFromJson(json);

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
    return 'IPostResponseBaseITaskRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IPostResponseBaseITaskRead &&
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
  _$$_IPostResponseBaseITaskReadCopyWith<_$_IPostResponseBaseITaskRead>
      get copyWith => __$$_IPostResponseBaseITaskReadCopyWithImpl<
          _$_IPostResponseBaseITaskRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IPostResponseBaseITaskReadToJson(
      this,
    );
  }
}

abstract class _IPostResponseBaseITaskRead
    implements IPostResponseBaseITaskRead {
  const factory _IPostResponseBaseITaskRead(
      {required final String message,
      required final Object meta,
      required final ITaskRead data}) = _$_IPostResponseBaseITaskRead;

  factory _IPostResponseBaseITaskRead.fromJson(Map<String, dynamic> json) =
      _$_IPostResponseBaseITaskRead.fromJson;

  @override
  String get message;
  @override
  Object get meta;
  @override
  ITaskRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IPostResponseBaseITaskReadCopyWith<_$_IPostResponseBaseITaskRead>
      get copyWith => throw _privateConstructorUsedError;
}
