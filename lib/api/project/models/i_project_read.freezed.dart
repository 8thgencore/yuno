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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IProjectReadCopyWith<IProjectRead> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IProjectReadCopyWith<$Res> {
  factory $IProjectReadCopyWith(IProjectRead value, $Res Function(IProjectRead) then) =
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
abstract class _$$_IProjectReadCopyWith<$Res> implements $IProjectReadCopyWith<$Res> {
  factory _$$_IProjectReadCopyWith(_$_IProjectRead value, $Res Function(_$_IProjectRead) then) =
      __$$_IProjectReadCopyWithImpl<$Res>;
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
class __$$_IProjectReadCopyWithImpl<$Res> extends _$IProjectReadCopyWithImpl<$Res, _$_IProjectRead>
    implements _$$_IProjectReadCopyWith<$Res> {
  __$$_IProjectReadCopyWithImpl(_$_IProjectRead _value, $Res Function(_$_IProjectRead) _then)
      : super(_value, _then);

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
    return _then(_$_IProjectRead(
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
class _$_IProjectRead implements _IProjectRead {
  const _$_IProjectRead(
      {required this.name,
      required this.description,
      required this.link,
      required this.id,
      @JsonKey(name: 'percent_completed') required this.percentCompleted,
      @JsonKey(name: 'created_by_id') this.createdBy});

  factory _$_IProjectRead.fromJson(Map<String, dynamic> json) => _$$_IProjectReadFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IProjectRead &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.percentCompleted, percentCompleted) ||
                other.percentCompleted == percentCompleted) &&
            (identical(other.createdBy, createdBy) || other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, link, id, percentCompleted, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IProjectReadCopyWith<_$_IProjectRead> get copyWith =>
      __$$_IProjectReadCopyWithImpl<_$_IProjectRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IProjectReadToJson(
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
      @JsonKey(name: 'percent_completed') required final double percentCompleted,
      @JsonKey(name: 'created_by_id') final String? createdBy}) = _$_IProjectRead;

  factory _IProjectRead.fromJson(Map<String, dynamic> json) = _$_IProjectRead.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$_IProjectReadCopyWith<_$_IProjectRead> get copyWith => throw _privateConstructorUsedError;
}
