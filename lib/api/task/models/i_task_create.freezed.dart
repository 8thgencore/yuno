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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ITaskCreate _$ITaskCreateFromJson(Map<String, dynamic> json) {
  return _ITaskCreate.fromJson(json);
}

/// @nodoc
mixin _$ITaskCreate {
  String get name => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get deadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id', includeIfNull: false)
  String? get projectId => throw _privateConstructorUsedError;

  /// Serializes this ITaskCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ITaskCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      @JsonKey(includeIfNull: false) DateTime? deadline,
      @JsonKey(name: 'project_id', includeIfNull: false) String? projectId});
}

/// @nodoc
class _$ITaskCreateCopyWithImpl<$Res, $Val extends ITaskCreate>
    implements $ITaskCreateCopyWith<$Res> {
  _$ITaskCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ITaskCreate
  /// with the given fields replaced by the non-null parameter values.
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
              as DateTime?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ITaskCreateImplCopyWith<$Res>
    implements $ITaskCreateCopyWith<$Res> {
  factory _$$ITaskCreateImplCopyWith(
          _$ITaskCreateImpl value, $Res Function(_$ITaskCreateImpl) then) =
      __$$ITaskCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool? done,
      @JsonKey(includeIfNull: false) DateTime? deadline,
      @JsonKey(name: 'project_id', includeIfNull: false) String? projectId});
}

/// @nodoc
class __$$ITaskCreateImplCopyWithImpl<$Res>
    extends _$ITaskCreateCopyWithImpl<$Res, _$ITaskCreateImpl>
    implements _$$ITaskCreateImplCopyWith<$Res> {
  __$$ITaskCreateImplCopyWithImpl(
      _$ITaskCreateImpl _value, $Res Function(_$ITaskCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ITaskCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? done = freezed,
    Object? deadline = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_$ITaskCreateImpl(
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
class _$ITaskCreateImpl implements _ITaskCreate {
  const _$ITaskCreateImpl(
      {required this.name,
      this.done = false,
      @JsonKey(includeIfNull: false) this.deadline,
      @JsonKey(name: 'project_id', includeIfNull: false) this.projectId});

  factory _$ITaskCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ITaskCreateImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final bool? done;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? deadline;
  @override
  @JsonKey(name: 'project_id', includeIfNull: false)
  final String? projectId;

  @override
  String toString() {
    return 'ITaskCreate(name: $name, done: $done, deadline: $deadline, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ITaskCreateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, done, deadline, projectId);

  /// Create a copy of ITaskCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ITaskCreateImplCopyWith<_$ITaskCreateImpl> get copyWith =>
      __$$ITaskCreateImplCopyWithImpl<_$ITaskCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ITaskCreateImplToJson(
      this,
    );
  }
}

abstract class _ITaskCreate implements ITaskCreate {
  const factory _ITaskCreate(
      {required final String name,
      final bool? done,
      @JsonKey(includeIfNull: false) final DateTime? deadline,
      @JsonKey(name: 'project_id', includeIfNull: false)
      final String? projectId}) = _$ITaskCreateImpl;

  factory _ITaskCreate.fromJson(Map<String, dynamic> json) =
      _$ITaskCreateImpl.fromJson;

  @override
  String get name;
  @override
  bool? get done;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get deadline;
  @override
  @JsonKey(name: 'project_id', includeIfNull: false)
  String? get projectId;

  /// Create a copy of ITaskCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ITaskCreateImplCopyWith<_$ITaskCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
