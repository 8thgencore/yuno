// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_user_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IUserUpdate _$IUserUpdateFromJson(Map<String, dynamic> json) {
  return _IUserUpdate.fromJson(json);
}

/// @nodoc
mixin _$IUserUpdate {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_id')
  String get roleId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IUserUpdateCopyWith<IUserUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IUserUpdateCopyWith<$Res> {
  factory $IUserUpdateCopyWith(
          IUserUpdate value, $Res Function(IUserUpdate) then) =
      _$IUserUpdateCopyWithImpl<$Res, IUserUpdate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String username,
      String email,
      String birthdate,
      String phone,
      @JsonKey(name: 'role_id') String roleId});
}

/// @nodoc
class _$IUserUpdateCopyWithImpl<$Res, $Val extends IUserUpdate>
    implements $IUserUpdateCopyWith<$Res> {
  _$IUserUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? birthdate = null,
    Object? phone = null,
    Object? roleId = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IUserUpdateCopyWith<$Res>
    implements $IUserUpdateCopyWith<$Res> {
  factory _$$_IUserUpdateCopyWith(
          _$_IUserUpdate value, $Res Function(_$_IUserUpdate) then) =
      __$$_IUserUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String username,
      String email,
      String birthdate,
      String phone,
      @JsonKey(name: 'role_id') String roleId});
}

/// @nodoc
class __$$_IUserUpdateCopyWithImpl<$Res>
    extends _$IUserUpdateCopyWithImpl<$Res, _$_IUserUpdate>
    implements _$$_IUserUpdateCopyWith<$Res> {
  __$$_IUserUpdateCopyWithImpl(
      _$_IUserUpdate _value, $Res Function(_$_IUserUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? birthdate = null,
    Object? phone = null,
    Object? roleId = null,
  }) {
    return _then(_$_IUserUpdate(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IUserUpdate implements _IUserUpdate {
  const _$_IUserUpdate(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      required this.username,
      required this.email,
      required this.birthdate,
      required this.phone,
      @JsonKey(name: 'role_id') required this.roleId});

  factory _$_IUserUpdate.fromJson(Map<String, dynamic> json) =>
      _$$_IUserUpdateFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String username;
  @override
  final String email;
  @override
  final String birthdate;
  @override
  final String phone;
  @override
  @JsonKey(name: 'role_id')
  final String roleId;

  @override
  String toString() {
    return 'IUserUpdate(firstName: $firstName, lastName: $lastName, username: $username, email: $email, birthdate: $birthdate, phone: $phone, roleId: $roleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IUserUpdate &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.roleId, roleId) || other.roleId == roleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, username,
      email, birthdate, phone, roleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IUserUpdateCopyWith<_$_IUserUpdate> get copyWith =>
      __$$_IUserUpdateCopyWithImpl<_$_IUserUpdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IUserUpdateToJson(
      this,
    );
  }
}

abstract class _IUserUpdate implements IUserUpdate {
  const factory _IUserUpdate(
      {@JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      required final String username,
      required final String email,
      required final String birthdate,
      required final String phone,
      @JsonKey(name: 'role_id') required final String roleId}) = _$_IUserUpdate;

  factory _IUserUpdate.fromJson(Map<String, dynamic> json) =
      _$_IUserUpdate.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get username;
  @override
  String get email;
  @override
  String get birthdate;
  @override
  String get phone;
  @override
  @JsonKey(name: 'role_id')
  String get roleId;
  @override
  @JsonKey(ignore: true)
  _$$_IUserUpdateCopyWith<_$_IUserUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
