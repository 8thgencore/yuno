// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_project_with_users_tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IProjectWithUsersTasks _$IProjectWithUsersTasksFromJson(
    Map<String, dynamic> json) {
  return _IProjectWithUsersTasks.fromJson(json);
}

/// @nodoc
mixin _$IProjectWithUsersTasks {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_id')
  String? get createdBy => throw _privateConstructorUsedError;
  List<ITaskRead>? get tasks => throw _privateConstructorUsedError;
  List<IUserRead>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IProjectWithUsersTasksCopyWith<IProjectWithUsersTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IProjectWithUsersTasksCopyWith<$Res> {
  factory $IProjectWithUsersTasksCopyWith(IProjectWithUsersTasks value,
          $Res Function(IProjectWithUsersTasks) then) =
      _$IProjectWithUsersTasksCopyWithImpl<$Res, IProjectWithUsersTasks>;
  @useResult
  $Res call(
      {String name,
      String description,
      String link,
      String id,
      @JsonKey(name: 'created_by_id') String? createdBy,
      List<ITaskRead>? tasks,
      List<IUserRead>? users});
}

/// @nodoc
class _$IProjectWithUsersTasksCopyWithImpl<$Res,
        $Val extends IProjectWithUsersTasks>
    implements $IProjectWithUsersTasksCopyWith<$Res> {
  _$IProjectWithUsersTasksCopyWithImpl(this._value, this._then);

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
    Object? tasks = freezed,
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
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<ITaskRead>?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<IUserRead>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IProjectWithUsersTasksCopyWith<$Res>
    implements $IProjectWithUsersTasksCopyWith<$Res> {
  factory _$$_IProjectWithUsersTasksCopyWith(_$_IProjectWithUsersTasks value,
          $Res Function(_$_IProjectWithUsersTasks) then) =
      __$$_IProjectWithUsersTasksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String link,
      String id,
      @JsonKey(name: 'created_by_id') String? createdBy,
      List<ITaskRead>? tasks,
      List<IUserRead>? users});
}

/// @nodoc
class __$$_IProjectWithUsersTasksCopyWithImpl<$Res>
    extends _$IProjectWithUsersTasksCopyWithImpl<$Res,
        _$_IProjectWithUsersTasks>
    implements _$$_IProjectWithUsersTasksCopyWith<$Res> {
  __$$_IProjectWithUsersTasksCopyWithImpl(_$_IProjectWithUsersTasks _value,
      $Res Function(_$_IProjectWithUsersTasks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? link = null,
    Object? id = null,
    Object? createdBy = freezed,
    Object? tasks = freezed,
    Object? users = freezed,
  }) {
    return _then(_$_IProjectWithUsersTasks(
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
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<ITaskRead>?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<IUserRead>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IProjectWithUsersTasks implements _IProjectWithUsersTasks {
  const _$_IProjectWithUsersTasks(
      {required this.name,
      required this.description,
      required this.link,
      required this.id,
      @JsonKey(name: 'created_by_id') this.createdBy,
      final List<ITaskRead>? tasks,
      final List<IUserRead>? users})
      : _tasks = tasks,
        _users = users;

  factory _$_IProjectWithUsersTasks.fromJson(Map<String, dynamic> json) =>
      _$$_IProjectWithUsersTasksFromJson(json);

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
  final List<ITaskRead>? _tasks;
  @override
  List<ITaskRead>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'IProjectWithUsersTasks(name: $name, description: $description, link: $link, id: $id, createdBy: $createdBy, tasks: $tasks, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IProjectWithUsersTasks &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdBy, createdBy) || other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, link, id, createdBy,
      const DeepCollectionEquality().hash(_tasks), const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IProjectWithUsersTasksCopyWith<_$_IProjectWithUsersTasks> get copyWith =>
      __$$_IProjectWithUsersTasksCopyWithImpl<_$_IProjectWithUsersTasks>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IProjectWithUsersTasksToJson(
      this,
    );
  }
}

abstract class _IProjectWithUsersTasks implements IProjectWithUsersTasks {
  const factory _IProjectWithUsersTasks(
      {required final String name,
      required final String description,
      required final String link,
      required final String id,
      @JsonKey(name: 'created_by_id') final String? createdBy,
      final List<ITaskRead>? tasks,
      final List<IUserRead>? users}) = _$_IProjectWithUsersTasks;

  factory _IProjectWithUsersTasks.fromJson(Map<String, dynamic> json) =
      _$_IProjectWithUsersTasks.fromJson;

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
  List<ITaskRead>? get tasks;
  @override
  List<IUserRead>? get users;
  @override
  @JsonKey(ignore: true)
  _$$_IProjectWithUsersTasksCopyWith<_$_IProjectWithUsersTasks> get copyWith =>
      throw _privateConstructorUsedError;
}
