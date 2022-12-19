// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_get_response_base_i_user_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IGetResponseBaseIUserRead _$IGetResponseBaseIUserReadFromJson(
    Map<String, dynamic> json) {
  return _IGetResponseBaseIUserRead.fromJson(json);
}

/// @nodoc
mixin _$IGetResponseBaseIUserRead {
  @JsonKey(defaultValue: 'Data got correctly')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;
  IUserRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IGetResponseBaseIUserReadCopyWith<IGetResponseBaseIUserRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGetResponseBaseIUserReadCopyWith<$Res> {
  factory $IGetResponseBaseIUserReadCopyWith(IGetResponseBaseIUserRead value,
          $Res Function(IGetResponseBaseIUserRead) then) =
      _$IGetResponseBaseIUserReadCopyWithImpl<$Res, IGetResponseBaseIUserRead>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data got correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IUserRead data});

  $IUserReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IGetResponseBaseIUserReadCopyWithImpl<$Res,
        $Val extends IGetResponseBaseIUserRead>
    implements $IGetResponseBaseIUserReadCopyWith<$Res> {
  _$IGetResponseBaseIUserReadCopyWithImpl(this._value, this._then);

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
abstract class _$$_IGetResponseBaseIUserReadCopyWith<$Res>
    implements $IGetResponseBaseIUserReadCopyWith<$Res> {
  factory _$$_IGetResponseBaseIUserReadCopyWith(
          _$_IGetResponseBaseIUserRead value,
          $Res Function(_$_IGetResponseBaseIUserRead) then) =
      __$$_IGetResponseBaseIUserReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data got correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IUserRead data});

  @override
  $IUserReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IGetResponseBaseIUserReadCopyWithImpl<$Res>
    extends _$IGetResponseBaseIUserReadCopyWithImpl<$Res,
        _$_IGetResponseBaseIUserRead>
    implements _$$_IGetResponseBaseIUserReadCopyWith<$Res> {
  __$$_IGetResponseBaseIUserReadCopyWithImpl(
      _$_IGetResponseBaseIUserRead _value,
      $Res Function(_$_IGetResponseBaseIUserRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IGetResponseBaseIUserRead(
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
class _$_IGetResponseBaseIUserRead implements _IGetResponseBaseIUserRead {
  const _$_IGetResponseBaseIUserRead(
      {@JsonKey(defaultValue: 'Data got correctly') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IGetResponseBaseIUserRead.fromJson(Map<String, dynamic> json) =>
      _$$_IGetResponseBaseIUserReadFromJson(json);

  @override
  @JsonKey(defaultValue: 'Data got correctly')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final IUserRead data;

  @override
  String toString() {
    return 'IGetResponseBaseIUserRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IGetResponseBaseIUserRead &&
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
  _$$_IGetResponseBaseIUserReadCopyWith<_$_IGetResponseBaseIUserRead>
      get copyWith => __$$_IGetResponseBaseIUserReadCopyWithImpl<
          _$_IGetResponseBaseIUserRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IGetResponseBaseIUserReadToJson(
      this,
    );
  }
}

abstract class _IGetResponseBaseIUserRead implements IGetResponseBaseIUserRead {
  const factory _IGetResponseBaseIUserRead(
      {@JsonKey(defaultValue: 'Data got correctly')
          required final String message,
      @JsonKey(defaultValue: {})
          required final Object meta,
      required final IUserRead data}) = _$_IGetResponseBaseIUserRead;

  factory _IGetResponseBaseIUserRead.fromJson(Map<String, dynamic> json) =
      _$_IGetResponseBaseIUserRead.fromJson;

  @override
  @JsonKey(defaultValue: 'Data got correctly')
  String get message;
  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  IUserRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IGetResponseBaseIUserReadCopyWith<_$_IGetResponseBaseIUserRead>
      get copyWith => throw _privateConstructorUsedError;
}
