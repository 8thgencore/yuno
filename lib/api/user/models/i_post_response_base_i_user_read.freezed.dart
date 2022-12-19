// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_post_response_base_i_user_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IPostResponseBaseIUserRead _$IPostResponseBaseIUserReadFromJson(
    Map<String, dynamic> json) {
  return _IPostResponseBaseIUserRead.fromJson(json);
}

/// @nodoc
mixin _$IPostResponseBaseIUserRead {
  @JsonKey(defaultValue: 'Data created correctly')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;
  IUserRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IPostResponseBaseIUserReadCopyWith<IPostResponseBaseIUserRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPostResponseBaseIUserReadCopyWith<$Res> {
  factory $IPostResponseBaseIUserReadCopyWith(IPostResponseBaseIUserRead value,
          $Res Function(IPostResponseBaseIUserRead) then) =
      _$IPostResponseBaseIUserReadCopyWithImpl<$Res,
          IPostResponseBaseIUserRead>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data created correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IUserRead data});

  $IUserReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IPostResponseBaseIUserReadCopyWithImpl<$Res,
        $Val extends IPostResponseBaseIUserRead>
    implements $IPostResponseBaseIUserReadCopyWith<$Res> {
  _$IPostResponseBaseIUserReadCopyWithImpl(this._value, this._then);

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
              as IUserRead,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IUserReadCopyWith<$Res> get data {
    return $IUserReadCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IPostResponseBaseIUserReadCopyWith<$Res>
    implements $IPostResponseBaseIUserReadCopyWith<$Res> {
  factory _$$_IPostResponseBaseIUserReadCopyWith(
          _$_IPostResponseBaseIUserRead value,
          $Res Function(_$_IPostResponseBaseIUserRead) then) =
      __$$_IPostResponseBaseIUserReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data created correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IUserRead data});

  @override
  $IUserReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IPostResponseBaseIUserReadCopyWithImpl<$Res>
    extends _$IPostResponseBaseIUserReadCopyWithImpl<$Res,
        _$_IPostResponseBaseIUserRead>
    implements _$$_IPostResponseBaseIUserReadCopyWith<$Res> {
  __$$_IPostResponseBaseIUserReadCopyWithImpl(
      _$_IPostResponseBaseIUserRead _value,
      $Res Function(_$_IPostResponseBaseIUserRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IPostResponseBaseIUserRead(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IUserRead,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IPostResponseBaseIUserRead implements _IPostResponseBaseIUserRead {
  const _$_IPostResponseBaseIUserRead(
      {@JsonKey(defaultValue: 'Data created correctly') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IPostResponseBaseIUserRead.fromJson(Map<String, dynamic> json) =>
      _$$_IPostResponseBaseIUserReadFromJson(json);

  @override
  @JsonKey(defaultValue: 'Data created correctly')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final IUserRead data;

  @override
  String toString() {
    return 'IPostResponseBaseIUserRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IPostResponseBaseIUserRead &&
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
  _$$_IPostResponseBaseIUserReadCopyWith<_$_IPostResponseBaseIUserRead>
      get copyWith => __$$_IPostResponseBaseIUserReadCopyWithImpl<
          _$_IPostResponseBaseIUserRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IPostResponseBaseIUserReadToJson(
      this,
    );
  }
}

abstract class _IPostResponseBaseIUserRead
    implements IPostResponseBaseIUserRead {
  const factory _IPostResponseBaseIUserRead(
      {@JsonKey(defaultValue: 'Data created correctly')
          required final String message,
      @JsonKey(defaultValue: {})
          required final Object meta,
      required final IUserRead data}) = _$_IPostResponseBaseIUserRead;

  factory _IPostResponseBaseIUserRead.fromJson(Map<String, dynamic> json) =
      _$_IPostResponseBaseIUserRead.fromJson;

  @override
  @JsonKey(defaultValue: 'Data created correctly')
  String get message;
  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  IUserRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IPostResponseBaseIUserReadCopyWith<_$_IPostResponseBaseIUserRead>
      get copyWith => throw _privateConstructorUsedError;
}
