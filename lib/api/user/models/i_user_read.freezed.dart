// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_user_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IUserRead _$IUserReadFromJson(Map<String, dynamic> json) {
  return _IUserRead.fromJson(json);
}

/// @nodoc
mixin _$IUserRead {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_id')
  String? get roleId => throw _privateConstructorUsedError;
  IRoleRead? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IUserReadCopyWith<IUserRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IUserReadCopyWith<$Res> {
  factory $IUserReadCopyWith(IUserRead value, $Res Function(IUserRead) then) =
      _$IUserReadCopyWithImpl<$Res, IUserRead>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String username,
      String email,
      String id,
      String? birthdate,
      String? phone,
      @JsonKey(name: 'role_id') String? roleId,
      IRoleRead? role});

  $IRoleReadCopyWith<$Res>? get role;
}

/// @nodoc
class _$IUserReadCopyWithImpl<$Res, $Val extends IUserRead>
    implements $IUserReadCopyWith<$Res> {
  _$IUserReadCopyWithImpl(this._value, this._then);

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
    Object? id = null,
    Object? birthdate = freezed,
    Object? phone = freezed,
    Object? roleId = freezed,
    Object? role = freezed,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as IRoleRead?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IRoleReadCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $IRoleReadCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IUserReadCopyWith<$Res> implements $IUserReadCopyWith<$Res> {
  factory _$$_IUserReadCopyWith(
          _$_IUserRead value, $Res Function(_$_IUserRead) then) =
      __$$_IUserReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String username,
      String email,
      String id,
      String? birthdate,
      String? phone,
      @JsonKey(name: 'role_id') String? roleId,
      IRoleRead? role});

  @override
  $IRoleReadCopyWith<$Res>? get role;
}

/// @nodoc
class __$$_IUserReadCopyWithImpl<$Res>
    extends _$IUserReadCopyWithImpl<$Res, _$_IUserRead>
    implements _$$_IUserReadCopyWith<$Res> {
  __$$_IUserReadCopyWithImpl(
      _$_IUserRead _value, $Res Function(_$_IUserRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? id = null,
    Object? birthdate = freezed,
    Object? phone = freezed,
    Object? roleId = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_IUserRead(
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as IRoleRead?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IUserRead implements _IUserRead {
  const _$_IUserRead(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      required this.username,
      required this.email,
      required this.id,
      this.birthdate,
      this.phone,
      @JsonKey(name: 'role_id') this.roleId,
      this.role});

  factory _$_IUserRead.fromJson(Map<String, dynamic> json) =>
      _$$_IUserReadFromJson(json);

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
  final String id;
  @override
  final String? birthdate;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'role_id')
  final String? roleId;
  @override
  final IRoleRead? role;

  @override
  String toString() {
    return 'IUserRead(firstName: $firstName, lastName: $lastName, username: $username, email: $email, id: $id, birthdate: $birthdate, phone: $phone, roleId: $roleId, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IUserRead &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, username,
      email, id, birthdate, phone, roleId, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IUserReadCopyWith<_$_IUserRead> get copyWith =>
      __$$_IUserReadCopyWithImpl<_$_IUserRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IUserReadToJson(
      this,
    );
  }
}

abstract class _IUserRead implements IUserRead {
  const factory _IUserRead(
      {@JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      required final String username,
      required final String email,
      required final String id,
      final String? birthdate,
      final String? phone,
      @JsonKey(name: 'role_id') final String? roleId,
      final IRoleRead? role}) = _$_IUserRead;

  factory _IUserRead.fromJson(Map<String, dynamic> json) =
      _$_IUserRead.fromJson;

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
  String get id;
  @override
  String? get birthdate;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'role_id')
  String? get roleId;
  @override
  IRoleRead? get role;
  @override
  @JsonKey(ignore: true)
  _$$_IUserReadCopyWith<_$_IUserRead> get copyWith =>
      throw _privateConstructorUsedError;
}
