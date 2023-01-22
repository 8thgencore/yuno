// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_task_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ITaskCreate _$ITaskCreateFromJson(Map<String, dynamic> json) {
  return _ITaskCreate.fromJson(json);
}

/// @nodoc
mixin _$ITaskCreate {
  String get name => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  String? get deadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String? get projectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ITaskCreateCopyWith<ITaskCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ITaskCreateCopyWith<$Res> {
  factory $ITaskCreateCopyWith(
          ITaskCreate value, $Res Function(ITaskCreate) then) =
      _$ITaskCreateCopyWithImpl<$Res, ITaskCreate>;
  @useResult
  $Res call(
      {String name,
      bool? done,
      String? deadline,
      @JsonKey(name: 'project_id') String? projectId});
}

/// @nodoc
class _$ITaskCreateCopyWithImpl<$Res, $Val extends ITaskCreate>
    implements $ITaskCreateCopyWith<$Res> {
  _$ITaskCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? done = freezed,
    Object? deadline = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ITaskCreateCopyWith<$Res>
    implements $ITaskCreateCopyWith<$Res> {
  factory _$$_ITaskCreateCopyWith(
          _$_ITaskCreate value, $Res Function(_$_ITaskCreate) then) =
      __$$_ITaskCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool? done,
      String? deadline,
      @JsonKey(name: 'project_id') String? projectId});
}

/// @nodoc
class __$$_ITaskCreateCopyWithImpl<$Res>
    extends _$ITaskCreateCopyWithImpl<$Res, _$_ITaskCreate>
    implements _$$_ITaskCreateCopyWith<$Res> {
  __$$_ITaskCreateCopyWithImpl(
      _$_ITaskCreate _value, $Res Function(_$_ITaskCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? done = freezed,
    Object? deadline = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_$_ITaskCreate(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ITaskCreate implements _ITaskCreate {
  const _$_ITaskCreate(
      {required this.name,
      this.done = false,
      this.deadline,
      @JsonKey(name: 'project_id') this.projectId});

  factory _$_ITaskCreate.fromJson(Map<String, dynamic> json) =>
      _$$_ITaskCreateFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final bool? done;
  @override
  final String? deadline;
  @override
  @JsonKey(name: 'project_id')
  final String? projectId;

  @override
  String toString() {
    return 'ITaskCreate(name: $name, done: $done, deadline: $deadline, projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ITaskCreate &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, done, deadline, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ITaskCreateCopyWith<_$_ITaskCreate> get copyWith =>
      __$$_ITaskCreateCopyWithImpl<_$_ITaskCreate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ITaskCreateToJson(
      this,
    );
  }
}

abstract class _ITaskCreate implements ITaskCreate {
  const factory _ITaskCreate(
      {required final String name,
      final bool? done,
      final String? deadline,
      @JsonKey(name: 'project_id') final String? projectId}) = _$_ITaskCreate;

  factory _ITaskCreate.fromJson(Map<String, dynamic> json) =
      _$_ITaskCreate.fromJson;

  @override
  String get name;
  @override
  bool? get done;
  @override
  String? get deadline;
  @override
  @JsonKey(name: 'project_id')
  String? get projectId;
  @override
  @JsonKey(ignore: true)
  _$$_ITaskCreateCopyWith<_$_ITaskCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
