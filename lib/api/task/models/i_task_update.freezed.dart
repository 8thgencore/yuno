// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_task_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ITaskUpdate _$ITaskUpdateFromJson(Map<String, dynamic> json) {
  return _ITaskUpdate.fromJson(json);
}

/// @nodoc
mixin _$ITaskUpdate {
  String? get name => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;

  /// Serializes this ITaskUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ITaskUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ITaskUpdateCopyWith<ITaskUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ITaskUpdateCopyWith<$Res> {
  factory $ITaskUpdateCopyWith(
          ITaskUpdate value, $Res Function(ITaskUpdate) then) =
      _$ITaskUpdateCopyWithImpl<$Res, ITaskUpdate>;
  @useResult
  $Res call({String? name, bool? done, DateTime? deadline});
}

/// @nodoc
class _$ITaskUpdateCopyWithImpl<$Res, $Val extends ITaskUpdate>
    implements $ITaskUpdateCopyWith<$Res> {
  _$ITaskUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ITaskUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? done = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ITaskUpdateImplCopyWith<$Res>
    implements $ITaskUpdateCopyWith<$Res> {
  factory _$$ITaskUpdateImplCopyWith(
          _$ITaskUpdateImpl value, $Res Function(_$ITaskUpdateImpl) then) =
      __$$ITaskUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, bool? done, DateTime? deadline});
}

/// @nodoc
class __$$ITaskUpdateImplCopyWithImpl<$Res>
    extends _$ITaskUpdateCopyWithImpl<$Res, _$ITaskUpdateImpl>
    implements _$$ITaskUpdateImplCopyWith<$Res> {
  __$$ITaskUpdateImplCopyWithImpl(
      _$ITaskUpdateImpl _value, $Res Function(_$ITaskUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ITaskUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? done = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$ITaskUpdateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ITaskUpdateImpl implements _ITaskUpdate {
  const _$ITaskUpdateImpl({this.name, this.done = false, this.deadline});

  factory _$ITaskUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ITaskUpdateImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey()
  final bool? done;
  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'ITaskUpdate(name: $name, done: $done, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ITaskUpdateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, done, deadline);

  /// Create a copy of ITaskUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ITaskUpdateImplCopyWith<_$ITaskUpdateImpl> get copyWith =>
      __$$ITaskUpdateImplCopyWithImpl<_$ITaskUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ITaskUpdateImplToJson(
      this,
    );
  }
}

abstract class _ITaskUpdate implements ITaskUpdate {
  const factory _ITaskUpdate(
      {final String? name,
      final bool? done,
      final DateTime? deadline}) = _$ITaskUpdateImpl;

  factory _ITaskUpdate.fromJson(Map<String, dynamic> json) =
      _$ITaskUpdateImpl.fromJson;

  @override
  String? get name;
  @override
  bool? get done;
  @override
  DateTime? get deadline;

  /// Create a copy of ITaskUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ITaskUpdateImplCopyWith<_$ITaskUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
