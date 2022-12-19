// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_post_response_base_token_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IPostResponseBaseTokenRead _$IPostResponseBaseTokenReadFromJson(
    Map<String, dynamic> json) {
  return _IPostResponseBaseTokenRead.fromJson(json);
}

/// @nodoc
mixin _$IPostResponseBaseTokenRead {
  @JsonKey(defaultValue: 'Data created correctly')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;
  TokenRead get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IPostResponseBaseTokenReadCopyWith<IPostResponseBaseTokenRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPostResponseBaseTokenReadCopyWith<$Res> {
  factory $IPostResponseBaseTokenReadCopyWith(IPostResponseBaseTokenRead value,
          $Res Function(IPostResponseBaseTokenRead) then) =
      _$IPostResponseBaseTokenReadCopyWithImpl<$Res,
          IPostResponseBaseTokenRead>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data created correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      TokenRead data});

  $TokenReadCopyWith<$Res> get data;
}

/// @nodoc
class _$IPostResponseBaseTokenReadCopyWithImpl<$Res,
        $Val extends IPostResponseBaseTokenRead>
    implements $IPostResponseBaseTokenReadCopyWith<$Res> {
  _$IPostResponseBaseTokenReadCopyWithImpl(this._value, this._then);

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
              as TokenRead,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenReadCopyWith<$Res> get data {
    return $TokenReadCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IPostResponseBaseTokenReadCopyWith<$Res>
    implements $IPostResponseBaseTokenReadCopyWith<$Res> {
  factory _$$_IPostResponseBaseTokenReadCopyWith(
          _$_IPostResponseBaseTokenRead value,
          $Res Function(_$_IPostResponseBaseTokenRead) then) =
      __$$_IPostResponseBaseTokenReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'Data created correctly') String message,
      @JsonKey(defaultValue: {}) Object meta,
      TokenRead data});

  @override
  $TokenReadCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IPostResponseBaseTokenReadCopyWithImpl<$Res>
    extends _$IPostResponseBaseTokenReadCopyWithImpl<$Res,
        _$_IPostResponseBaseTokenRead>
    implements _$$_IPostResponseBaseTokenReadCopyWith<$Res> {
  __$$_IPostResponseBaseTokenReadCopyWithImpl(
      _$_IPostResponseBaseTokenRead _value,
      $Res Function(_$_IPostResponseBaseTokenRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IPostResponseBaseTokenRead(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenRead,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IPostResponseBaseTokenRead implements _IPostResponseBaseTokenRead {
  const _$_IPostResponseBaseTokenRead(
      {@JsonKey(defaultValue: 'Data created correctly') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IPostResponseBaseTokenRead.fromJson(Map<String, dynamic> json) =>
      _$$_IPostResponseBaseTokenReadFromJson(json);

  @override
  @JsonKey(defaultValue: 'Data created correctly')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final TokenRead data;

  @override
  String toString() {
    return 'IPostResponseBaseTokenRead(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IPostResponseBaseTokenRead &&
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
  _$$_IPostResponseBaseTokenReadCopyWith<_$_IPostResponseBaseTokenRead>
      get copyWith => __$$_IPostResponseBaseTokenReadCopyWithImpl<
          _$_IPostResponseBaseTokenRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IPostResponseBaseTokenReadToJson(
      this,
    );
  }
}

abstract class _IPostResponseBaseTokenRead
    implements IPostResponseBaseTokenRead {
  const factory _IPostResponseBaseTokenRead(
      {@JsonKey(defaultValue: 'Data created correctly')
          required final String message,
      @JsonKey(defaultValue: {})
          required final Object meta,
      required final TokenRead data}) = _$_IPostResponseBaseTokenRead;

  factory _IPostResponseBaseTokenRead.fromJson(Map<String, dynamic> json) =
      _$_IPostResponseBaseTokenRead.fromJson;

  @override
  @JsonKey(defaultValue: 'Data created correctly')
  String get message;
  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  TokenRead get data;
  @override
  @JsonKey(ignore: true)
  _$$_IPostResponseBaseTokenReadCopyWith<_$_IPostResponseBaseTokenRead>
      get copyWith => throw _privateConstructorUsedError;
}
