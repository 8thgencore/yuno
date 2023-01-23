// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_base_response_i_project_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IBaseResponseIProjectRead _$IBaseResponseIProjectReadFromJson(
    Map<String, dynamic> json) {
  return _IBaseResponseIProjectRead.fromJson(json);
}

/// @nodoc
mixin _$IBaseResponseIProjectRead {
  @JsonKey(defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;
  IProjectRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IBaseResponseIProjectReadCopyWith<IBaseResponseIProjectRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IBaseResponseIProjectReadCopyWith<$Res> {
  factory $IBaseResponseIProjectReadCopyWith(IBaseResponseIProjectRead value,
          $Res Function(IBaseResponseIProjectRead) then) =
      _$IBaseResponseIProjectReadCopyWithImpl<$Res, IBaseResponseIProjectRead>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IProjectRead data});

  $IProjectReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IBaseResponseIProjectReadCopyWithImpl<$Res,
        $Val extends IBaseResponseIProjectRead>
    implements $IBaseResponseIProjectReadCopyWith<$Res> {
  _$IBaseResponseIProjectReadCopyWithImpl(this._value, this._then);

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
              as IProjectRead,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IProjectReadCopyWith<$Res> get data {
    return $IProjectReadCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IBaseResponseIProjectReadCopyWith<$Res>
    implements $IBaseResponseIProjectReadCopyWith<$Res> {
  factory _$$_IBaseResponseIProjectReadCopyWith(
          _$_IBaseResponseIProjectRead value,
          $Res Function(_$_IBaseResponseIProjectRead) then) =
      __$$_IBaseResponseIProjectReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IProjectRead data});

  @override
  $IProjectReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IBaseResponseIProjectReadCopyWithImpl<$Res>
    extends _$IBaseResponseIProjectReadCopyWithImpl<$Res,
        _$_IBaseResponseIProjectRead>
    implements _$$_IBaseResponseIProjectReadCopyWith<$Res> {
  __$$_IBaseResponseIProjectReadCopyWithImpl(
      _$_IBaseResponseIProjectRead _value,
      $Res Function(_$_IBaseResponseIProjectRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IBaseResponseIProjectRead(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IProjectRead,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IBaseResponseIProjectRead implements _IBaseResponseIProjectRead {
  const _$_IBaseResponseIProjectRead(
      {@JsonKey(defaultValue: '') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IBaseResponseIProjectRead.fromJson(Map<String, dynamic> json) =>
      _$$_IBaseResponseIProjectReadFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final IProjectRead data;

  @override
  String toString() {
    return 'IBaseResponseIProjectRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IBaseResponseIProjectRead &&
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
  _$$_IBaseResponseIProjectReadCopyWith<_$_IBaseResponseIProjectRead>
      get copyWith => __$$_IBaseResponseIProjectReadCopyWithImpl<
          _$_IBaseResponseIProjectRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IBaseResponseIProjectReadToJson(
      this,
    );
  }
}

abstract class _IBaseResponseIProjectRead implements IBaseResponseIProjectRead {
  const factory _IBaseResponseIProjectRead(
      {@JsonKey(defaultValue: '') required final String message,
      @JsonKey(defaultValue: {}) required final Object meta,
      required final IProjectRead data}) = _$_IBaseResponseIProjectRead;

  factory _IBaseResponseIProjectRead.fromJson(Map<String, dynamic> json) =
      _$_IBaseResponseIProjectRead.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get message;
  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  IProjectRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IBaseResponseIProjectReadCopyWith<_$_IBaseResponseIProjectRead>
      get copyWith => throw _privateConstructorUsedError;
}
