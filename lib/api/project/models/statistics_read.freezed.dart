// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsRead _$StatisticsReadFromJson(Map<String, dynamic> json) {
  return _StatisticsRead.fromJson(json);
}

/// @nodoc
mixin _$StatisticsRead {
  @JsonKey(name: 'projects_count')
  int get projectsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'missing_count')
  int get missingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'ongoing_count')
  int get ongoingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_count')
  int get completedCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsReadCopyWith<StatisticsRead> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsReadCopyWith<$Res> {
  factory $StatisticsReadCopyWith(StatisticsRead value, $Res Function(StatisticsRead) then) =
      _$StatisticsReadCopyWithImpl<$Res, StatisticsRead>;
  @useResult
  $Res call(
      {@JsonKey(name: 'projects_count') int projectsCount,
      @JsonKey(name: 'missing_count') int missingCount,
      @JsonKey(name: 'ongoing_count') int ongoingCount,
      @JsonKey(name: 'completed_count') int completedCount});
}

/// @nodoc
class _$StatisticsReadCopyWithImpl<$Res, $Val extends StatisticsRead>
    implements $StatisticsReadCopyWith<$Res> {
  _$StatisticsReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectsCount = null,
    Object? missingCount = null,
    Object? ongoingCount = null,
    Object? completedCount = null,
  }) {
    return _then(_value.copyWith(
      projectsCount: null == projectsCount
          ? _value.projectsCount
          : projectsCount // ignore: cast_nullable_to_non_nullable
              as int,
      missingCount: null == missingCount
          ? _value.missingCount
          : missingCount // ignore: cast_nullable_to_non_nullable
              as int,
      ongoingCount: null == ongoingCount
          ? _value.ongoingCount
          : ongoingCount // ignore: cast_nullable_to_non_nullable
              as int,
      completedCount: null == completedCount
          ? _value.completedCount
          : completedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsReadImplCopyWith<$Res> implements $StatisticsReadCopyWith<$Res> {
  factory _$$StatisticsReadImplCopyWith(
          _$StatisticsReadImpl value, $Res Function(_$StatisticsReadImpl) then) =
      __$$StatisticsReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'projects_count') int projectsCount,
      @JsonKey(name: 'missing_count') int missingCount,
      @JsonKey(name: 'ongoing_count') int ongoingCount,
      @JsonKey(name: 'completed_count') int completedCount});
}

/// @nodoc
class __$$StatisticsReadImplCopyWithImpl<$Res>
    extends _$StatisticsReadCopyWithImpl<$Res, _$StatisticsReadImpl>
    implements _$$StatisticsReadImplCopyWith<$Res> {
  __$$StatisticsReadImplCopyWithImpl(
      _$StatisticsReadImpl _value, $Res Function(_$StatisticsReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectsCount = null,
    Object? missingCount = null,
    Object? ongoingCount = null,
    Object? completedCount = null,
  }) {
    return _then(_$StatisticsReadImpl(
      projectsCount: null == projectsCount
          ? _value.projectsCount
          : projectsCount // ignore: cast_nullable_to_non_nullable
              as int,
      missingCount: null == missingCount
          ? _value.missingCount
          : missingCount // ignore: cast_nullable_to_non_nullable
              as int,
      ongoingCount: null == ongoingCount
          ? _value.ongoingCount
          : ongoingCount // ignore: cast_nullable_to_non_nullable
              as int,
      completedCount: null == completedCount
          ? _value.completedCount
          : completedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsReadImpl implements _StatisticsRead {
  const _$StatisticsReadImpl(
      {@JsonKey(name: 'projects_count') required this.projectsCount,
      @JsonKey(name: 'missing_count') required this.missingCount,
      @JsonKey(name: 'ongoing_count') required this.ongoingCount,
      @JsonKey(name: 'completed_count') required this.completedCount});

  factory _$StatisticsReadImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsReadImplFromJson(json);

  @override
  @JsonKey(name: 'projects_count')
  final int projectsCount;
  @override
  @JsonKey(name: 'missing_count')
  final int missingCount;
  @override
  @JsonKey(name: 'ongoing_count')
  final int ongoingCount;
  @override
  @JsonKey(name: 'completed_count')
  final int completedCount;

  @override
  String toString() {
    return 'StatisticsRead(projectsCount: $projectsCount, missingCount: $missingCount, ongoingCount: $ongoingCount, completedCount: $completedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsReadImpl &&
            (identical(other.projectsCount, projectsCount) ||
                other.projectsCount == projectsCount) &&
            (identical(other.missingCount, missingCount) || other.missingCount == missingCount) &&
            (identical(other.ongoingCount, ongoingCount) || other.ongoingCount == ongoingCount) &&
            (identical(other.completedCount, completedCount) ||
                other.completedCount == completedCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, projectsCount, missingCount, ongoingCount, completedCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsReadImplCopyWith<_$StatisticsReadImpl> get copyWith =>
      __$$StatisticsReadImplCopyWithImpl<_$StatisticsReadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsReadImplToJson(
      this,
    );
  }
}

abstract class _StatisticsRead implements StatisticsRead {
  const factory _StatisticsRead(
      {@JsonKey(name: 'projects_count') required final int projectsCount,
      @JsonKey(name: 'missing_count') required final int missingCount,
      @JsonKey(name: 'ongoing_count') required final int ongoingCount,
      @JsonKey(name: 'completed_count') required final int completedCount}) = _$StatisticsReadImpl;

  factory _StatisticsRead.fromJson(Map<String, dynamic> json) = _$StatisticsReadImpl.fromJson;

  @override
  @JsonKey(name: 'projects_count')
  int get projectsCount;
  @override
  @JsonKey(name: 'missing_count')
  int get missingCount;
  @override
  @JsonKey(name: 'ongoing_count')
  int get ongoingCount;
  @override
  @JsonKey(name: 'completed_count')
  int get completedCount;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsReadImplCopyWith<_$StatisticsReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
