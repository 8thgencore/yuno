// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_post_response_base_i_role_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IPostResponseBaseIRoleRead _$IPostResponseBaseIRoleReadFromJson(
    Map<String, dynamic> json) {
  return _IPostResponseBaseIRoleRead.fromJson(json);
}

/// @nodoc
mixin _$IPostResponseBaseIRoleRead {
  @JsonKey(defaultValue: 'Data created correctly')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;
  IRoleRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IPostResponseBaseIRoleReadCopyWith<IPostResponseBaseIRoleRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPostResponseBaseIRoleReadCopyWith<$Res> {
  factory $IPostResponseBaseIRoleReadCopyWith(IPostResponseBaseIRoleRead value,
          $Res Function(IPostResponseBaseIRoleRead) then) =
      _$IPostResponseBaseIRoleReadCopyWithImpl<$Res,
          IPostResponseBaseIRoleRead>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data created correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IRoleRead data});

  $IRoleReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IPostResponseBaseIRoleReadCopyWithImpl<$Res,
        $Val extends IPostResponseBaseIRoleRead>
    implements $IPostResponseBaseIRoleReadCopyWith<$Res> {
  _$IPostResponseBaseIRoleReadCopyWithImpl(this._value, this._then);

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
              as IRoleRead,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IRoleReadCopyWith<$Res> get data {
    return $IRoleReadCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IPostResponseBaseIRoleReadCopyWith<$Res>
    implements $IPostResponseBaseIRoleReadCopyWith<$Res> {
  factory _$$_IPostResponseBaseIRoleReadCopyWith(
          _$_IPostResponseBaseIRoleRead value,
          $Res Function(_$_IPostResponseBaseIRoleRead) then) =
      __$$_IPostResponseBaseIRoleReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data created correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IRoleRead data});

  @override
  $IRoleReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IPostResponseBaseIRoleReadCopyWithImpl<$Res>
    extends _$IPostResponseBaseIRoleReadCopyWithImpl<$Res,
        _$_IPostResponseBaseIRoleRead>
    implements _$$_IPostResponseBaseIRoleReadCopyWith<$Res> {
  __$$_IPostResponseBaseIRoleReadCopyWithImpl(
      _$_IPostResponseBaseIRoleRead _value,
      $Res Function(_$_IPostResponseBaseIRoleRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IPostResponseBaseIRoleRead(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IRoleRead,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IPostResponseBaseIRoleRead implements _IPostResponseBaseIRoleRead {
  const _$_IPostResponseBaseIRoleRead(
      {@JsonKey(defaultValue: 'Data created correctly') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IPostResponseBaseIRoleRead.fromJson(Map<String, dynamic> json) =>
      _$$_IPostResponseBaseIRoleReadFromJson(json);

  @override
  @JsonKey(defaultValue: 'Data created correctly')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final IRoleRead data;

  @override
  String toString() {
    return 'IPostResponseBaseIRoleRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IPostResponseBaseIRoleRead &&
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
  _$$_IPostResponseBaseIRoleReadCopyWith<_$_IPostResponseBaseIRoleRead>
      get copyWith => __$$_IPostResponseBaseIRoleReadCopyWithImpl<
          _$_IPostResponseBaseIRoleRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IPostResponseBaseIRoleReadToJson(
      this,
    );
  }
}

abstract class _IPostResponseBaseIRoleRead
    implements IPostResponseBaseIRoleRead {
  const factory _IPostResponseBaseIRoleRead(
      {@JsonKey(defaultValue: 'Data created correctly')
          required final String message,
      @JsonKey(defaultValue: {})
          required final Object meta,
      required final IRoleRead data}) = _$_IPostResponseBaseIRoleRead;

  factory _IPostResponseBaseIRoleRead.fromJson(Map<String, dynamic> json) =
      _$_IPostResponseBaseIRoleRead.fromJson;

  @override
  @JsonKey(defaultValue: 'Data created correctly')
  String get message;
  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  IRoleRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IPostResponseBaseIRoleReadCopyWith<_$_IPostResponseBaseIRoleRead>
      get copyWith => throw _privateConstructorUsedError;
}
