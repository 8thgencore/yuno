// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_task_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ITaskRead _$ITaskReadFromJson(Map<String, dynamic> json) {
  return _ITaskRead.fromJson(json);
}

/// @nodoc
mixin _$ITaskRead {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String? get projectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ITaskReadCopyWith<ITaskRead> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ITaskReadCopyWith<$Res> {
  factory $ITaskReadCopyWith(ITaskRead value, $Res Function(ITaskRead) then) =
      _$ITaskReadCopyWithImpl<$Res, ITaskRead>;
  @useResult
  $Res call(
      {String name,
      String id,
      bool? done,
      DateTime? deadline,
      @JsonKey(name: 'project_id') String? projectId});
}

/// @nodoc
class _$ITaskReadCopyWithImpl<$Res, $Val extends ITaskRead> implements $ITaskReadCopyWith<$Res> {
  _$ITaskReadCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ITaskReadImplCopyWith<$Res> implements $ITaskReadCopyWith<$Res> {
  factory _$$ITaskReadImplCopyWith(_$ITaskReadImpl value, $Res Function(_$ITaskReadImpl) then) =
      __$$ITaskReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      bool? done,
      DateTime? deadline,
      @JsonKey(name: 'project_id') String? projectId});
}

/// @nodoc
class __$$ITaskReadImplCopyWithImpl<$Res> extends _$ITaskReadCopyWithImpl<$Res, _$ITaskReadImpl>
    implements _$$ITaskReadImplCopyWith<$Res> {
  __$$ITaskReadImplCopyWithImpl(_$ITaskReadImpl _value, $Res Function(_$ITaskReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? done = freezed,
    Object? deadline = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_$ITaskReadImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ITaskReadImpl implements _ITaskRead {
  const _$ITaskReadImpl(
      {required this.name,
      required this.id,
      this.done = false,
      this.deadline,
      @JsonKey(name: 'project_id') this.projectId});

  factory _$ITaskReadImpl.fromJson(Map<String, dynamic> json) => _$$ITaskReadImplFromJson(json);

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
  String toString() {
    return 'ITaskRead(name: $name, id: $id, done: $done, deadline: $deadline, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ITaskReadImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.deadline, deadline) || other.deadline == deadline) &&
            (identical(other.projectId, projectId) || other.projectId == projectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, done, deadline, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ITaskReadImplCopyWith<_$ITaskReadImpl> get copyWith =>
      __$$ITaskReadImplCopyWithImpl<_$ITaskReadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ITaskReadImplToJson(
      this,
    );
  }
}

abstract class _ITaskRead implements ITaskRead {
  const factory _ITaskRead(
      {required final String name,
      required final String id,
      final bool? done,
      final DateTime? deadline,
      @JsonKey(name: 'project_id') final String? projectId}) = _$ITaskReadImpl;

  factory _ITaskRead.fromJson(Map<String, dynamic> json) = _$ITaskReadImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$ITaskReadImplCopyWith<_$ITaskReadImpl> get copyWith => throw _privateConstructorUsedError;
}
