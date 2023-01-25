// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_get_response_base_i_project_with_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IGetResponseBaseIProjectWithUsers _$IGetResponseBaseIProjectWithUsersFromJson(
    Map<String, dynamic> json) {
  return _IGetResponseBaseIProjectWithUsers.fromJson(json);
}

/// @nodoc
mixin _$IGetResponseBaseIProjectWithUsers {
  @JsonKey(defaultValue: '')
  String get message => throw _privateConstructorUsedError;

  @JsonKey(defaultValue: {})
  Object get meta => throw _privateConstructorUsedError;

  IProjectWithUsers get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IGetResponseBaseIProjectWithUsersCopyWith<IGetResponseBaseIProjectWithUsers>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGetResponseBaseIProjectWithUsersCopyWith<$Res> {
  factory $IGetResponseBaseIProjectWithUsersCopyWith(
          IGetResponseBaseIProjectWithUsers value,
          $Res Function(IGetResponseBaseIProjectWithUsers) then) =
      _$IGetResponseBaseIProjectWithUsersCopyWithImpl<$Res,
          IGetResponseBaseIProjectWithUsers>;

  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IProjectWithUsers data});

  $IProjectWithUsersCopyWith<$Res> get data;
}

/// @nodoc
class _$IGetResponseBaseIProjectWithUsersCopyWithImpl<$Res,
        $Val extends IGetResponseBaseIProjectWithUsers>
    implements $IGetResponseBaseIProjectWithUsersCopyWith<$Res> {
  _$IGetResponseBaseIProjectWithUsersCopyWithImpl(this._value, this._then);

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
              as IProjectWithUsers,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IProjectWithUsersCopyWith<$Res> get data {
    return $IProjectWithUsersCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IGetResponseBaseIProjectWithUsersCopyWith<$Res>
    implements $IGetResponseBaseIProjectWithUsersCopyWith<$Res> {
  factory _$$_IGetResponseBaseIProjectWithUsersCopyWith(
          _$_IGetResponseBaseIProjectWithUsers value,
          $Res Function(_$_IGetResponseBaseIProjectWithUsers) then) =
      __$$_IGetResponseBaseIProjectWithUsersCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String message,
      @JsonKey(defaultValue: {}) Object meta,
      IProjectWithUsers data});

  @override
  $IProjectWithUsersCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IGetResponseBaseIProjectWithUsersCopyWithImpl<$Res>
    extends _$IGetResponseBaseIProjectWithUsersCopyWithImpl<$Res,
        _$_IGetResponseBaseIProjectWithUsers>
    implements _$$_IGetResponseBaseIProjectWithUsersCopyWith<$Res> {
  __$$_IGetResponseBaseIProjectWithUsersCopyWithImpl(
      _$_IGetResponseBaseIProjectWithUsers _value,
      $Res Function(_$_IGetResponseBaseIProjectWithUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_IGetResponseBaseIProjectWithUsers(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta ? _value.meta : meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IProjectWithUsers,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IGetResponseBaseIProjectWithUsers
    implements _IGetResponseBaseIProjectWithUsers {
  const _$_IGetResponseBaseIProjectWithUsers(
      {@JsonKey(defaultValue: '') required this.message,
      @JsonKey(defaultValue: {}) required this.meta,
      required this.data});

  factory _$_IGetResponseBaseIProjectWithUsers.fromJson(
          Map<String, dynamic> json) =>
      _$$_IGetResponseBaseIProjectWithUsersFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String message;
  @override
  @JsonKey(defaultValue: {})
  final Object meta;
  @override
  final IProjectWithUsers data;

  @override
  String toString() {
    return 'IGetResponseBaseIProjectWithUsers(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IGetResponseBaseIProjectWithUsers &&
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
  _$$_IGetResponseBaseIProjectWithUsersCopyWith<
          _$_IGetResponseBaseIProjectWithUsers>
      get copyWith => __$$_IGetResponseBaseIProjectWithUsersCopyWithImpl<
          _$_IGetResponseBaseIProjectWithUsers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IGetResponseBaseIProjectWithUsersToJson(
      this,
    );
  }
}

abstract class _IGetResponseBaseIProjectWithUsers
    implements IGetResponseBaseIProjectWithUsers {
  const factory _IGetResponseBaseIProjectWithUsers(
      {@JsonKey(defaultValue: '') required final String message,
      @JsonKey(defaultValue: {}) required final Object meta,
      required final IProjectWithUsers data}) =
      _$_IGetResponseBaseIProjectWithUsers;

  factory _IGetResponseBaseIProjectWithUsers.fromJson(
          Map<String, dynamic> json) =
      _$_IGetResponseBaseIProjectWithUsers.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get message;

  @override
  @JsonKey(defaultValue: {})
  Object get meta;
  @override
  IProjectWithUsers get data;
  @override
  @JsonKey(ignore: true)
  _$$_IGetResponseBaseIProjectWithUsersCopyWith<
          _$_IGetResponseBaseIProjectWithUsers>
      get copyWith => throw _privateConstructorUsedError;
}
