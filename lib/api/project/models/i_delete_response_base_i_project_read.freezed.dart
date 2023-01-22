// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_delete_response_base_i_project_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IDeleteResponseBaseIProjectRead _$IDeleteResponseBaseIProjectReadFromJson(
    Map<String, dynamic> json) {
  return _IDeleteResponseBaseIProjectRead.fromJson(json);
}

/// @nodoc
mixin _$IDeleteResponseBaseIProjectRead {
  String get message => throw _privateConstructorUsedError;
  Object get meta => throw _privateConstructorUsedError;
  IProjectRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IDeleteResponseBaseIProjectReadCopyWith<IDeleteResponseBaseIProjectRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IDeleteResponseBaseIProjectReadCopyWith<$Res> {
  factory $IDeleteResponseBaseIProjectReadCopyWith(
          IDeleteResponseBaseIProjectRead value,
          $Res Function(IDeleteResponseBaseIProjectRead) then) =
      _$IDeleteResponseBaseIProjectReadCopyWithImpl<$Res,
          IDeleteResponseBaseIProjectRead>;
  @useResult
  $Res call({String message, Object meta, IProjectRead data});

  $IProjectReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IDeleteResponseBaseIProjectReadCopyWithImpl<$Res,
        $Val extends IDeleteResponseBaseIProjectRead>
    implements $IDeleteResponseBaseIProjectReadCopyWith<$Res> {
  _$IDeleteResponseBaseIProjectReadCopyWithImpl(this._value, this._then);

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
abstract class _$$_IDeleteResponseBaseIProjectReadCopyWith<$Res>
    implements $IDeleteResponseBaseIProjectReadCopyWith<$Res> {
  factory _$$_IDeleteResponseBaseIProjectReadCopyWith(
          _$_IDeleteResponseBaseIProjectRead value,
          $Res Function(_$_IDeleteResponseBaseIProjectRead) then) =
      __$$_IDeleteResponseBaseIProjectReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object meta, IProjectRead data});

  @override
  $IProjectReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IDeleteResponseBaseIProjectReadCopyWithImpl<$Res>
    extends _$IDeleteResponseBaseIProjectReadCopyWithImpl<$Res,
        _$_IDeleteResponseBaseIProjectRead>
    implements _$$_IDeleteResponseBaseIProjectReadCopyWith<$Res> {
  __$$_IDeleteResponseBaseIProjectReadCopyWithImpl(
      _$_IDeleteResponseBaseIProjectRead _value,
      $Res Function(_$_IDeleteResponseBaseIProjectRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IDeleteResponseBaseIProjectRead(
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
class _$_IDeleteResponseBaseIProjectRead
    implements _IDeleteResponseBaseIProjectRead {
  const _$_IDeleteResponseBaseIProjectRead(
      {required this.message,
      required this.meta,
      required this.data});

  factory _$_IDeleteResponseBaseIProjectRead.fromJson(
          Map<String, dynamic> json) =>
      _$$_IDeleteResponseBaseIProjectReadFromJson(json);

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
    return 'IDeleteResponseBaseIProjectRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IDeleteResponseBaseIProjectRead &&
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
  _$$_IDeleteResponseBaseIProjectReadCopyWith<
          _$_IDeleteResponseBaseIProjectRead>
      get copyWith => __$$_IDeleteResponseBaseIProjectReadCopyWithImpl<
          _$_IDeleteResponseBaseIProjectRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IDeleteResponseBaseIProjectReadToJson(
      this,
    );
  }
}

abstract class _IDeleteResponseBaseIProjectRead
    implements IDeleteResponseBaseIProjectRead {
  const factory _IDeleteResponseBaseIProjectRead(
      {required final String message,
      required final Object meta,
      required final IProjectRead data}) = _$_IDeleteResponseBaseIProjectRead;

  factory _IDeleteResponseBaseIProjectRead.fromJson(Map<String, dynamic> json) =
      _$_IDeleteResponseBaseIProjectRead.fromJson;

  @override
  String get message;
  @override
  Object get meta;
  @override
  IProjectRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IDeleteResponseBaseIProjectReadCopyWith<
          _$_IDeleteResponseBaseIProjectRead>
      get copyWith => throw _privateConstructorUsedError;
}
