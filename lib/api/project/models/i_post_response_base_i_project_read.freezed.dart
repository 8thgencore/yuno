// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_post_response_base_i_project_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IPostResponseBaseIProjectRead _$IPostResponseBaseIProjectReadFromJson(
    Map<String, dynamic> json) {
  return _IPostResponseBaseIProjectRead.fromJson(json);
}

/// @nodoc
mixin _$IPostResponseBaseIProjectRead {
  String get message => throw _privateConstructorUsedError;
  Object get meta => throw _privateConstructorUsedError;
  IProjectRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IPostResponseBaseIProjectReadCopyWith<IPostResponseBaseIProjectRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPostResponseBaseIProjectReadCopyWith<$Res> {
  factory $IPostResponseBaseIProjectReadCopyWith(
          IPostResponseBaseIProjectRead value,
          $Res Function(IPostResponseBaseIProjectRead) then) =
      _$IPostResponseBaseIProjectReadCopyWithImpl<$Res,
          IPostResponseBaseIProjectRead>;
  @useResult
  $Res call({String message, Object meta, IProjectRead data});

  $IProjectReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IPostResponseBaseIProjectReadCopyWithImpl<$Res,
        $Val extends IPostResponseBaseIProjectRead>
    implements $IPostResponseBaseIProjectReadCopyWith<$Res> {
  _$IPostResponseBaseIProjectReadCopyWithImpl(this._value, this._then);

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
abstract class _$$_IPostResponseBaseIProjectReadCopyWith<$Res>
    implements $IPostResponseBaseIProjectReadCopyWith<$Res> {
  factory _$$_IPostResponseBaseIProjectReadCopyWith(
          _$_IPostResponseBaseIProjectRead value,
          $Res Function(_$_IPostResponseBaseIProjectRead) then) =
      __$$_IPostResponseBaseIProjectReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object meta, IProjectRead data});

  @override
  $IProjectReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IPostResponseBaseIProjectReadCopyWithImpl<$Res>
    extends _$IPostResponseBaseIProjectReadCopyWithImpl<$Res,
        _$_IPostResponseBaseIProjectRead>
    implements _$$_IPostResponseBaseIProjectReadCopyWith<$Res> {
  __$$_IPostResponseBaseIProjectReadCopyWithImpl(
      _$_IPostResponseBaseIProjectRead _value,
      $Res Function(_$_IPostResponseBaseIProjectRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IPostResponseBaseIProjectRead(
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
class _$_IPostResponseBaseIProjectRead
    implements _IPostResponseBaseIProjectRead {
  const _$_IPostResponseBaseIProjectRead(
      {required this.message,
      required this.meta,
      required this.data});

  factory _$_IPostResponseBaseIProjectRead.fromJson(
          Map<String, dynamic> json) =>
      _$$_IPostResponseBaseIProjectReadFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final Object meta;
  @override
  final IProjectRead data;

  @override
  String toString() {
    return 'IPostResponseBaseIProjectRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IPostResponseBaseIProjectRead &&
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
  _$$_IPostResponseBaseIProjectReadCopyWith<_$_IPostResponseBaseIProjectRead>
      get copyWith => __$$_IPostResponseBaseIProjectReadCopyWithImpl<
          _$_IPostResponseBaseIProjectRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IPostResponseBaseIProjectReadToJson(
      this,
    );
  }
}

abstract class _IPostResponseBaseIProjectRead
    implements IPostResponseBaseIProjectRead {
  const factory _IPostResponseBaseIProjectRead(
      {required final String message,
      required final Object meta,
      required final IProjectRead data}) = _$_IPostResponseBaseIProjectRead;

  factory _IPostResponseBaseIProjectRead.fromJson(Map<String, dynamic> json) =
      _$_IPostResponseBaseIProjectRead.fromJson;

  @override
  String get message;
  @override
  Object get meta;
  @override
  IProjectRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IPostResponseBaseIProjectReadCopyWith<_$_IPostResponseBaseIProjectRead>
      get copyWith => throw _privateConstructorUsedError;
}
