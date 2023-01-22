// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_get_response_paginated_i_project_with_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IGetResponsePaginatedIProjectWithUsers
    _$IGetResponsePaginatedIProjectWithUsersFromJson(
        Map<String, dynamic> json) {
  return _IGetResponsePaginatedIProjectWithUsers.fromJson(json);
}

/// @nodoc
mixin _$IGetResponsePaginatedIProjectWithUsers {
  PageBaseDataTypeIProjectWithUsers get data =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Object? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IGetResponsePaginatedIProjectWithUsersCopyWith<
          IGetResponsePaginatedIProjectWithUsers>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGetResponsePaginatedIProjectWithUsersCopyWith<$Res> {
  factory $IGetResponsePaginatedIProjectWithUsersCopyWith(
          IGetResponsePaginatedIProjectWithUsers value,
          $Res Function(IGetResponsePaginatedIProjectWithUsers) then) =
      _$IGetResponsePaginatedIProjectWithUsersCopyWithImpl<$Res,
          IGetResponsePaginatedIProjectWithUsers>;
  @useResult
  $Res call(
      {PageBaseDataTypeIProjectWithUsers data, String? message, Object? meta});

  $PageBaseDataTypeIProjectWithUsersCopyWith<$Res> get data;
}

/// @nodoc
class _$IGetResponsePaginatedIProjectWithUsersCopyWithImpl<$Res,
        $Val extends IGetResponsePaginatedIProjectWithUsers>
    implements $IGetResponsePaginatedIProjectWithUsersCopyWith<$Res> {
  _$IGetResponsePaginatedIProjectWithUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PageBaseDataTypeIProjectWithUsers,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta ? _value.meta : meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageBaseDataTypeIProjectWithUsersCopyWith<$Res> get data {
    return $PageBaseDataTypeIProjectWithUsersCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IGetResponsePaginatedIProjectWithUsersCopyWith<$Res>
    implements $IGetResponsePaginatedIProjectWithUsersCopyWith<$Res> {
  factory _$$_IGetResponsePaginatedIProjectWithUsersCopyWith(
          _$_IGetResponsePaginatedIProjectWithUsers value,
          $Res Function(_$_IGetResponsePaginatedIProjectWithUsers) then) =
      __$$_IGetResponsePaginatedIProjectWithUsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageBaseDataTypeIProjectWithUsers data, String? message, Object? meta});

  @override
  $PageBaseDataTypeIProjectWithUsersCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IGetResponsePaginatedIProjectWithUsersCopyWithImpl<$Res>
    extends _$IGetResponsePaginatedIProjectWithUsersCopyWithImpl<$Res,
        _$_IGetResponsePaginatedIProjectWithUsers>
    implements _$$_IGetResponsePaginatedIProjectWithUsersCopyWith<$Res> {
  __$$_IGetResponsePaginatedIProjectWithUsersCopyWithImpl(
      _$_IGetResponsePaginatedIProjectWithUsers _value,
      $Res Function(_$_IGetResponsePaginatedIProjectWithUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_IGetResponsePaginatedIProjectWithUsers(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PageBaseDataTypeIProjectWithUsers,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta ? _value.meta : meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IGetResponsePaginatedIProjectWithUsers
    implements _IGetResponsePaginatedIProjectWithUsers {
  const _$_IGetResponsePaginatedIProjectWithUsers(
      {required this.data,
      this.message = 'Data got correctly',
      this.meta = const {}});

  factory _$_IGetResponsePaginatedIProjectWithUsers.fromJson(
          Map<String, dynamic> json) =>
      _$$_IGetResponsePaginatedIProjectWithUsersFromJson(json);

  @override
  final PageBaseDataTypeIProjectWithUsers data;
  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final Object? meta;

  @override
  String toString() {
    return 'IGetResponsePaginatedIProjectWithUsers(data: $data, message: $message, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IGetResponsePaginatedIProjectWithUsers &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, message, const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IGetResponsePaginatedIProjectWithUsersCopyWith<
          _$_IGetResponsePaginatedIProjectWithUsers>
      get copyWith => __$$_IGetResponsePaginatedIProjectWithUsersCopyWithImpl<
          _$_IGetResponsePaginatedIProjectWithUsers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IGetResponsePaginatedIProjectWithUsersToJson(
      this,
    );
  }
}

abstract class _IGetResponsePaginatedIProjectWithUsers
    implements IGetResponsePaginatedIProjectWithUsers {
  const factory _IGetResponsePaginatedIProjectWithUsers(
      {required final PageBaseDataTypeIProjectWithUsers data,
      final String? message,
      final Object? meta}) = _$_IGetResponsePaginatedIProjectWithUsers;

  factory _IGetResponsePaginatedIProjectWithUsers.fromJson(
          Map<String, dynamic> json) =
      _$_IGetResponsePaginatedIProjectWithUsers.fromJson;

  @override
  PageBaseDataTypeIProjectWithUsers get data;
  @override
  String? get message;
  @override
  Object? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_IGetResponsePaginatedIProjectWithUsersCopyWith<
          _$_IGetResponsePaginatedIProjectWithUsers>
      get copyWith => throw _privateConstructorUsedError;
}
