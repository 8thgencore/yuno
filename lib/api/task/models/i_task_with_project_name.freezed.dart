// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_task_with_project_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ITaskWithProjectName _$ITaskWithProjectNameFromJson(Map<String, dynamic> json) {
  return _ITaskWithProjectName.fromJson(json);
}

/// @nodoc
mixin _$ITaskWithProjectName {
  String get name => throw _privateConstructorUsedError;

  String get id => throw _privateConstructorUsedError;

  bool? get done => throw _privateConstructorUsedError;

  DateTime? get deadline => throw _privateConstructorUsedError;

  @JsonKey(name: 'project_id')
  String? get projectId => throw _privateConstructorUsedError;

  @JsonKey(name: 'project_name')
  String? get projectName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ITaskWithProjectNameCopyWith<ITaskWithProjectName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ITaskWithProjectNameCopyWith<$Res> {
  factory $ITaskWithProjectNameCopyWith(
          ITaskWithProjectName value, $Res Function(ITaskWithProjectName) then) =
      _$ITaskWithProjectNameCopyWithImpl<$Res, ITaskWithProjectName>;

  @useResult
  $Res call(
      {String name,
      String id,
      bool? done,
      DateTime? deadline,
      @JsonKey(name: 'project_id') String? projectId,
      @JsonKey(name: 'project_name') String? projectName});
}

/// @nodoc
class _$ITaskWithProjectNameCopyWithImpl<$Res, $Val extends ITaskWithProjectName>
    implements $ITaskWithProjectNameCopyWith<$Res> {
  _$ITaskWithProjectNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? done = freezed,
    Object? deadline = freezed,
    Object? projectId = freezed,
    Object? projectName = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectName: freezed == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ITaskWithProjectNameCopyWith<$Res>
    implements $ITaskWithProjectNameCopyWith<$Res> {
  factory _$$_ITaskWithProjectNameCopyWith(
          _$_ITaskWithProjectName value, $Res Function(_$_ITaskWithProjectName) then) =
      __$$_ITaskWithProjectNameCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String name,
      String id,
      bool? done,
      DateTime? deadline,
      @JsonKey(name: 'project_id') String? projectId,
      @JsonKey(name: 'project_name') String? projectName});
}

/// @nodoc
class __$$_ITaskWithProjectNameCopyWithImpl<$Res>
    extends _$ITaskWithProjectNameCopyWithImpl<$Res, _$_ITaskWithProjectName>
    implements _$$_ITaskWithProjectNameCopyWith<$Res> {
  __$$_ITaskWithProjectNameCopyWithImpl(
      _$_ITaskWithProjectName _value, $Res Function(_$_ITaskWithProjectName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? done = freezed,
    Object? deadline = freezed,
    Object? projectId = freezed,
    Object? projectName = freezed,
  }) {
    return _then(_$_ITaskWithProjectName(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectName: freezed == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ITaskWithProjectName implements _ITaskWithProjectName {
  const _$_ITaskWithProjectName(
      {required this.name,
      required this.id,
      this.done = false,
      this.deadline,
      @JsonKey(name: 'project_id') this.projectId,
      @JsonKey(name: 'project_name') this.projectName});

  factory _$_ITaskWithProjectName.fromJson(Map<String, dynamic> json) =>
      _$$_ITaskWithProjectNameFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  @JsonKey()
  final bool? done;
  @override
  final DateTime? deadline;
  @override
  @JsonKey(name: 'project_id')
  final String? projectId;
  @override
  @JsonKey(name: 'project_name')
  final String? projectName;

  @override
  String toString() {
    return 'ITaskWithProjectName(name: $name, id: $id, done: $done, deadline: $deadline, projectId: $projectId, projectName: $projectName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ITaskWithProjectName &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.deadline, deadline) || other.deadline == deadline) &&
            (identical(other.projectId, projectId) || other.projectId == projectId) &&
            (identical(other.projectName, projectName) || other.projectName == projectName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, done, deadline, projectId, projectName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ITaskWithProjectNameCopyWith<_$_ITaskWithProjectName> get copyWith =>
      __$$_ITaskWithProjectNameCopyWithImpl<_$_ITaskWithProjectName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ITaskWithProjectNameToJson(
      this,
    );
  }
}

abstract class _ITaskWithProjectName implements ITaskWithProjectName {
  const factory _ITaskWithProjectName(
      {required final String name,
      required final String id,
      final bool? done,
      final DateTime? deadline,
      @JsonKey(name: 'project_id') final String? projectId,
      @JsonKey(name: 'project_name') final String? projectName}) = _$_ITaskWithProjectName;

  factory _ITaskWithProjectName.fromJson(Map<String, dynamic> json) =
      _$_ITaskWithProjectName.fromJson;

  @override
  String get name;

  @override
  String get id;

  @override
  bool? get done;

  @override
  DateTime? get deadline;

  @override
  @JsonKey(name: 'project_id')
  String? get projectId;

  @override
  @JsonKey(name: 'project_name')
  String? get projectName;

  @override
  @JsonKey(ignore: true)
  _$$_ITaskWithProjectNameCopyWith<_$_ITaskWithProjectName> get copyWith =>
      throw _privateConstructorUsedError;
}
