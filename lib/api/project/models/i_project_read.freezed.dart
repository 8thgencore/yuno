// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_project_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IProjectRead _$IProjectReadFromJson(Map<String, dynamic> json) {
  return _IProjectRead.fromJson(json);
}

/// @nodoc
mixin _$IProjectRead {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'percent_completed')
  double get percentCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_id')
  String? get createdBy => throw _privateConstructorUsedError;

  /// Serializes this IProjectRead to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IProjectRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IProjectReadCopyWith<IProjectRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IProjectReadCopyWith<$Res> {
  factory $IProjectReadCopyWith(
          IProjectRead value, $Res Function(IProjectRead) then) =
      _$IProjectReadCopyWithImpl<$Res, IProjectRead>;
  @useResult
  $Res call(
      {String name,
      String description,
      String link,
      String id,
      @JsonKey(name: 'percent_completed') double percentCompleted,
      @JsonKey(name: 'created_by_id') String? createdBy});
}

/// @nodoc
class _$IProjectReadCopyWithImpl<$Res, $Val extends IProjectRead>
    implements $IProjectReadCopyWith<$Res> {
  _$IProjectReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IProjectRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? link = null,
    Object? id = null,
    Object? percentCompleted = null,
    Object? createdBy = freezed,
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
      percentCompleted: null == percentCompleted
          ? _value.percentCompleted
          : percentCompleted // ignore: cast_nullable_to_non_nullable
              as double,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IProjectReadImplCopyWith<$Res>
    implements $IProjectReadCopyWith<$Res> {
  factory _$$IProjectReadImplCopyWith(
          _$IProjectReadImpl value, $Res Function(_$IProjectReadImpl) then) =
      __$$IProjectReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String link,
      String id,
      @JsonKey(name: 'percent_completed') double percentCompleted,
      @JsonKey(name: 'created_by_id') String? createdBy});
}

/// @nodoc
class __$$IProjectReadImplCopyWithImpl<$Res>
    extends _$IProjectReadCopyWithImpl<$Res, _$IProjectReadImpl>
    implements _$$IProjectReadImplCopyWith<$Res> {
  __$$IProjectReadImplCopyWithImpl(
      _$IProjectReadImpl _value, $Res Function(_$IProjectReadImpl) _then)
      : super(_value, _then);

  /// Create a copy of IProjectRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? link = null,
    Object? id = null,
    Object? percentCompleted = null,
    Object? createdBy = freezed,
  }) {
    return _then(_$IProjectReadImpl(
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
      percentCompleted: null == percentCompleted
          ? _value.percentCompleted
          : percentCompleted // ignore: cast_nullable_to_non_nullable
              as double,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IProjectReadImpl implements _IProjectRead {
  const _$IProjectReadImpl(
      {required this.name,
      required this.description,
      required this.link,
      required this.id,
      @JsonKey(name: 'percent_completed') required this.percentCompleted,
      @JsonKey(name: 'created_by_id') this.createdBy});

  factory _$IProjectReadImpl.fromJson(Map<String, dynamic> json) =>
      _$$IProjectReadImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String link;
  @override
  final String id;
  @override
  @JsonKey(name: 'percent_completed')
  final double percentCompleted;
  @override
  @JsonKey(name: 'created_by_id')
  final String? createdBy;

  @override
  String toString() {
    return 'IProjectRead(name: $name, description: $description, link: $link, id: $id, percentCompleted: $percentCompleted, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IProjectReadImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.percentCompleted, percentCompleted) ||
                other.percentCompleted == percentCompleted) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, link, id, percentCompleted, createdBy);

  /// Create a copy of IProjectRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IProjectReadImplCopyWith<_$IProjectReadImpl> get copyWith =>
      __$$IProjectReadImplCopyWithImpl<_$IProjectReadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IProjectReadImplToJson(
      this,
    );
  }
}

abstract class _IProjectRead implements IProjectRead {
  const factory _IProjectRead(
          {required final String name,
          required final String description,
          required final String link,
          required final String id,
          @JsonKey(name: 'percent_completed')
          required final double percentCompleted,
          @JsonKey(name: 'created_by_id') final String? createdBy}) =
      _$IProjectReadImpl;

  factory _IProjectRead.fromJson(Map<String, dynamic> json) =
      _$IProjectReadImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get link;
  @override
  String get id;
  @override
  @JsonKey(name: 'percent_completed')
  double get percentCompleted;
  @override
  @JsonKey(name: 'created_by_id')
  String? get createdBy;

  /// Create a copy of IProjectRead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IProjectReadImplCopyWith<_$IProjectReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
