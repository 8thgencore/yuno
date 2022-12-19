// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_get_response_base_i_role_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IGetResponseBaseIRoleRead _$IGetResponseBaseIRoleReadFromJson(
    Map<String, dynamic> json) {
  return _IGetResponseBaseIRoleRead.fromJson(json);
}

/// @nodoc
mixin _$IGetResponseBaseIRoleRead {
  @JsonKey(defaultValue: 'Data got correctly')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;
  IRoleRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IGetResponseBaseIRoleReadCopyWith<IGetResponseBaseIRoleRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGetResponseBaseIRoleReadCopyWith<$Res> {
  factory $IGetResponseBaseIRoleReadCopyWith(IGetResponseBaseIRoleRead value,
          $Res Function(IGetResponseBaseIRoleRead) then) =
      _$IGetResponseBaseIRoleReadCopyWithImpl<$Res, IGetResponseBaseIRoleRead>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data got correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IRoleRead data});

  $IRoleReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IGetResponseBaseIRoleReadCopyWithImpl<$Res,
        $Val extends IGetResponseBaseIRoleRead>
    implements $IGetResponseBaseIRoleReadCopyWith<$Res> {
  _$IGetResponseBaseIRoleReadCopyWithImpl(this._value, this._then);

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
abstract class _$$_IGetResponseBaseIRoleReadCopyWith<$Res>
    implements $IGetResponseBaseIRoleReadCopyWith<$Res> {
  factory _$$_IGetResponseBaseIRoleReadCopyWith(
          _$_IGetResponseBaseIRoleRead value,
          $Res Function(_$_IGetResponseBaseIRoleRead) then) =
      __$$_IGetResponseBaseIRoleReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data got correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IRoleRead data});

  @override
  $IRoleReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IGetResponseBaseIRoleReadCopyWithImpl<$Res>
    extends _$IGetResponseBaseIRoleReadCopyWithImpl<$Res,
        _$_IGetResponseBaseIRoleRead>
    implements _$$_IGetResponseBaseIRoleReadCopyWith<$Res> {
  __$$_IGetResponseBaseIRoleReadCopyWithImpl(
      _$_IGetResponseBaseIRoleRead _value,
      $Res Function(_$_IGetResponseBaseIRoleRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IGetResponseBaseIRoleRead(
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
class _$_IGetResponseBaseIRoleRead implements _IGetResponseBaseIRoleRead {
  const _$_IGetResponseBaseIRoleRead(
      {@JsonKey(defaultValue: 'Data got correctly') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IGetResponseBaseIRoleRead.fromJson(Map<String, dynamic> json) =>
      _$$_IGetResponseBaseIRoleReadFromJson(json);

  @override
  @JsonKey(defaultValue: 'Data got correctly')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final IRoleRead data;

  @override
  String toString() {
    return 'IGetResponseBaseIRoleRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IGetResponseBaseIRoleRead &&
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
  _$$_IGetResponseBaseIRoleReadCopyWith<_$_IGetResponseBaseIRoleRead>
      get copyWith => __$$_IGetResponseBaseIRoleReadCopyWithImpl<
          _$_IGetResponseBaseIRoleRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IGetResponseBaseIRoleReadToJson(
      this,
    );
  }
}

abstract class _IGetResponseBaseIRoleRead implements IGetResponseBaseIRoleRead {
  const factory _IGetResponseBaseIRoleRead(
      {@JsonKey(defaultValue: 'Data got correctly')
          required final String message,
      @JsonKey(defaultValue: {})
          required final Object meta,
      required final IRoleRead data}) = _$_IGetResponseBaseIRoleRead;

  factory _IGetResponseBaseIRoleRead.fromJson(Map<String, dynamic> json) =
      _$_IGetResponseBaseIRoleRead.fromJson;

  @override
  @JsonKey(defaultValue: 'Data got correctly')
  String get message;
  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  IRoleRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IGetResponseBaseIRoleReadCopyWith<_$_IGetResponseBaseIRoleRead>
      get copyWith => throw _privateConstructorUsedError;
}
