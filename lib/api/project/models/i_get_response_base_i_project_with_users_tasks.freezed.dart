// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_get_response_base_i_project_with_users_tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IGetResponseBaseIProjectWithUsersTasks
    _$IGetResponseBaseIProjectWithUsersTasksFromJson(
        Map<String, dynamic> json) {
  return _IGetResponseBaseIProjectWithUsersTasks.fromJson(json);
}

/// @nodoc
mixin _$IGetResponseBaseIProjectWithUsersTasks {
  @JsonKey(defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;
  IProjectWithUsersTasks get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IGetResponseBaseIProjectWithUsersTasksCopyWith<IGetResponseBaseIProjectWithUsersTasks>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGetResponseBaseIProjectWithUsersTasksCopyWith<$Res> {
  factory $IGetResponseBaseIProjectWithUsersTasksCopyWith(
          IGetResponseBaseIProjectWithUsersTasks value,
          $Res Function(IGetResponseBaseIProjectWithUsersTasks) then) =
      _$IGetResponseBaseIProjectWithUsersTasksCopyWithImpl<$Res,
          IGetResponseBaseIProjectWithUsersTasks>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IProjectWithUsersTasks data});

  $IProjectWithUsersTasksCopyWith<$Res> get data;
}

/// @nodoc
class _$IGetResponseBaseIProjectWithUsersTasksCopyWithImpl<$Res,
        $Val extends IGetResponseBaseIProjectWithUsersTasks>
    implements $IGetResponseBaseIProjectWithUsersTasksCopyWith<$Res> {
  _$IGetResponseBaseIProjectWithUsersTasksCopyWithImpl(this._value, this._then);

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
              as IProjectWithUsersTasks,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IProjectWithUsersTasksCopyWith<$Res> get data {
    return $IProjectWithUsersTasksCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IGetResponseBaseIProjectWithUsersTasksCopyWith<$Res>
    implements $IGetResponseBaseIProjectWithUsersTasksCopyWith<$Res> {
  factory _$$_IGetResponseBaseIProjectWithUsersTasksCopyWith(
          _$_IGetResponseBaseIProjectWithUsersTasks value,
          $Res Function(_$_IGetResponseBaseIProjectWithUsersTasks) then) =
      __$$_IGetResponseBaseIProjectWithUsersTasksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IProjectWithUsersTasks data});

  @override
  $IProjectWithUsersTasksCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IGetResponseBaseIProjectWithUsersTasksCopyWithImpl<$Res>
    extends _$IGetResponseBaseIProjectWithUsersTasksCopyWithImpl<$Res,
        _$_IGetResponseBaseIProjectWithUsersTasks>
    implements _$$_IGetResponseBaseIProjectWithUsersTasksCopyWith<$Res> {
  __$$_IGetResponseBaseIProjectWithUsersTasksCopyWithImpl(
      _$_IGetResponseBaseIProjectWithUsersTasks _value,
      $Res Function(_$_IGetResponseBaseIProjectWithUsersTasks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IGetResponseBaseIProjectWithUsersTasks(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IProjectWithUsersTasks,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IGetResponseBaseIProjectWithUsersTasks
    implements _IGetResponseBaseIProjectWithUsersTasks {
  const _$_IGetResponseBaseIProjectWithUsersTasks(
      {@JsonKey(defaultValue: '') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IGetResponseBaseIProjectWithUsersTasks.fromJson(
          Map<String, dynamic> json) =>
      _$$_IGetResponseBaseIProjectWithUsersTasksFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final IProjectWithUsersTasks data;

  @override
  String toString() {
    return 'IGetResponseBaseIProjectWithUsersTasks(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IGetResponseBaseIProjectWithUsersTasks &&
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
  _$$_IGetResponseBaseIProjectWithUsersTasksCopyWith<
          _$_IGetResponseBaseIProjectWithUsersTasks>
      get copyWith => __$$_IGetResponseBaseIProjectWithUsersTasksCopyWithImpl<
          _$_IGetResponseBaseIProjectWithUsersTasks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IGetResponseBaseIProjectWithUsersTasksToJson(
      this,
    );
  }
}

abstract class _IGetResponseBaseIProjectWithUsersTasks
    implements IGetResponseBaseIProjectWithUsersTasks {
  const factory _IGetResponseBaseIProjectWithUsersTasks(
      {@JsonKey(defaultValue: '') required final String message,
      @JsonKey(defaultValue: {}) required final Object meta,
      required final IProjectWithUsersTasks data}) = _$_IGetResponseBaseIProjectWithUsersTasks;

  factory _IGetResponseBaseIProjectWithUsersTasks.fromJson(
          Map<String, dynamic> json) =
      _$_IGetResponseBaseIProjectWithUsersTasks.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get message;
  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  IProjectWithUsersTasks get data;
  @override
  @JsonKey(ignore: true)
  _$$_IGetResponseBaseIProjectWithUsersTasksCopyWith<
          _$_IGetResponseBaseIProjectWithUsersTasks>
      get copyWith => throw _privateConstructorUsedError;
}
