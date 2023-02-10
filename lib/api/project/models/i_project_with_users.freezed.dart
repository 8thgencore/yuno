// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_project_with_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IProjectWithUsers _$IProjectWithUsersFromJson(Map<String, dynamic> json) {
  return _IProjectWithUsers.fromJson(json);
}

/// @nodoc
mixin _$IProjectWithUsers {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_id')
  String? get createdBy => throw _privateConstructorUsedError;
  List<IUserRead>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IProjectWithUsersCopyWith<IProjectWithUsers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IProjectWithUsersCopyWith<$Res> {
  factory $IProjectWithUsersCopyWith(
          IProjectWithUsers value, $Res Function(IProjectWithUsers) then) =
      _$IProjectWithUsersCopyWithImpl<$Res, IProjectWithUsers>;
  @useResult
  $Res call(
      {String name,
      String description,
      String link,
      String id,
      @JsonKey(name: 'created_by_id') String? createdBy,
      List<IUserRead>? users});
}

/// @nodoc
class _$IProjectWithUsersCopyWithImpl<$Res, $Val extends IProjectWithUsers>
    implements $IProjectWithUsersCopyWith<$Res> {
  _$IProjectWithUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? link = null,
    Object? id = null,
    Object? createdBy = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<IUserRead>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IProjectWithUsersCopyWith<$Res> implements $IProjectWithUsersCopyWith<$Res> {
  factory _$$_IProjectWithUsersCopyWith(
          _$_IProjectWithUsers value, $Res Function(_$_IProjectWithUsers) then) =
      __$$_IProjectWithUsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String link,
      String id,
      @JsonKey(name: 'created_by_id') String? createdBy,
      List<IUserRead>? users});
}

/// @nodoc
class __$$_IProjectWithUsersCopyWithImpl<$Res>
    extends _$IProjectWithUsersCopyWithImpl<$Res, _$_IProjectWithUsers>
    implements _$$_IProjectWithUsersCopyWith<$Res> {
  __$$_IProjectWithUsersCopyWithImpl(
      _$_IProjectWithUsers _value, $Res Function(_$_IProjectWithUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? link = null,
    Object? id = null,
    Object? createdBy = freezed,
    Object? users = freezed,
  }) {
    return _then(_$_IProjectWithUsers(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<IUserRead>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IProjectWithUsers implements _IProjectWithUsers {
  const _$_IProjectWithUsers(
      {required this.name,
      required this.description,
      required this.link,
      required this.id,
      @JsonKey(name: 'created_by_id') this.createdBy,
      final List<IUserRead>? users})
      : _users = users;

  factory _$_IProjectWithUsers.fromJson(Map<String, dynamic> json) =>
      _$$_IProjectWithUsersFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String link;
  @override
  final String id;
  @override
  @JsonKey(name: 'created_by_id')
  final String? createdBy;
  final List<IUserRead>? _users;
  @override
  List<IUserRead>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IProjectWithUsers(name: $name, description: $description, link: $link, id: $id, createdBy: $createdBy, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IProjectWithUsers &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdBy, createdBy) || other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, link, id, createdBy,
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IProjectWithUsersCopyWith<_$_IProjectWithUsers> get copyWith =>
      __$$_IProjectWithUsersCopyWithImpl<_$_IProjectWithUsers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IProjectWithUsersToJson(
      this,
    );
  }
}

abstract class _IProjectWithUsers implements IProjectWithUsers {
  const factory _IProjectWithUsers(
      {required final String name,
      required final String description,
      required final String link,
      required final String id,
      @JsonKey(name: 'created_by_id') final String? createdBy,
      final List<IUserRead>? users}) = _$_IProjectWithUsers;

  factory _IProjectWithUsers.fromJson(Map<String, dynamic> json) = _$_IProjectWithUsers.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get link;
  @override
  String get id;
  @override
  @JsonKey(name: 'created_by_id')
  String? get createdBy;
  @override
  List<IUserRead>? get users;
  @override
  @JsonKey(ignore: true)
  _$$_IProjectWithUsersCopyWith<_$_IProjectWithUsers> get copyWith =>
      throw _privateConstructorUsedError;
}
