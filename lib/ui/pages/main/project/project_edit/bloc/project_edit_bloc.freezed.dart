// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(String text) descriptionChanged,
    required TResult Function() saved,
    required TResult Function() updated,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(String text)? descriptionChanged,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(String text)? descriptionChanged,
    TResult Function()? saved,
    TResult Function()? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEditEventCopyWith<$Res> {
  factory $ProjectEditEventCopyWith(ProjectEditEvent value, $Res Function(ProjectEditEvent) then) =
      _$ProjectEditEventCopyWithImpl<$Res, ProjectEditEvent>;
}

/// @nodoc
class _$ProjectEditEventCopyWithImpl<$Res, $Val extends ProjectEditEvent>
    implements $ProjectEditEventCopyWith<$Res> {
  _$ProjectEditEventCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(_$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res, _$_StartedEvent>
    implements _$$_StartedEventCopyWith<$Res> {
  __$$_StartedEventCopyWithImpl(_$_StartedEvent _value, $Res Function(_$_StartedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_StartedEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartedEvent implements _StartedEvent {
  const _$_StartedEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectEditEvent.started(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedEventCopyWith<_$_StartedEvent> get copyWith =>
      __$$_StartedEventCopyWithImpl<_$_StartedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(String text) descriptionChanged,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(String text)? descriptionChanged,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return started?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(String text)? descriptionChanged,
    TResult Function()? saved,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements ProjectEditEvent {
  const factory _StartedEvent(final String id) = _$_StartedEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_StartedEventCopyWith<_$_StartedEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameChangedEventCopyWith<$Res> {
  factory _$$_NameChangedEventCopyWith(
          _$_NameChangedEvent value, $Res Function(_$_NameChangedEvent) then) =
      __$$_NameChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_NameChangedEventCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res, _$_NameChangedEvent>
    implements _$$_NameChangedEventCopyWith<$Res> {
  __$$_NameChangedEventCopyWithImpl(
      _$_NameChangedEvent _value, $Res Function(_$_NameChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_NameChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChangedEvent implements _NameChangedEvent {
  const _$_NameChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProjectEditEvent.nameChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedEventCopyWith<_$_NameChangedEvent> get copyWith =>
      __$$_NameChangedEventCopyWithImpl<_$_NameChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(String text) descriptionChanged,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return nameChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(String text)? descriptionChanged,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return nameChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(String text)? descriptionChanged,
    TResult Function()? saved,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChangedEvent implements ProjectEditEvent {
  const factory _NameChangedEvent(final String text) = _$_NameChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_NameChangedEventCopyWith<_$_NameChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DescriptionChangedEventCopyWith<$Res> {
  factory _$$_DescriptionChangedEventCopyWith(
          _$_DescriptionChangedEvent value, $Res Function(_$_DescriptionChangedEvent) then) =
      __$$_DescriptionChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_DescriptionChangedEventCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res, _$_DescriptionChangedEvent>
    implements _$$_DescriptionChangedEventCopyWith<$Res> {
  __$$_DescriptionChangedEventCopyWithImpl(
      _$_DescriptionChangedEvent _value, $Res Function(_$_DescriptionChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_DescriptionChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChangedEvent implements _DescriptionChangedEvent {
  const _$_DescriptionChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProjectEditEvent.descriptionChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescriptionChangedEventCopyWith<_$_DescriptionChangedEvent> get copyWith =>
      __$$_DescriptionChangedEventCopyWithImpl<_$_DescriptionChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(String text) descriptionChanged,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return descriptionChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(String text)? descriptionChanged,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return descriptionChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(String text)? descriptionChanged,
    TResult Function()? saved,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChangedEvent implements ProjectEditEvent {
  const factory _DescriptionChangedEvent(final String text) = _$_DescriptionChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_DescriptionChangedEventCopyWith<_$_DescriptionChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedEventCopyWith<$Res> {
  factory _$$_SavedEventCopyWith(_$_SavedEvent value, $Res Function(_$_SavedEvent) then) =
      __$$_SavedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedEventCopyWithImpl<$Res> extends _$ProjectEditEventCopyWithImpl<$Res, _$_SavedEvent>
    implements _$$_SavedEventCopyWith<$Res> {
  __$$_SavedEventCopyWithImpl(_$_SavedEvent _value, $Res Function(_$_SavedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SavedEvent implements _SavedEvent {
  const _$_SavedEvent();

  @override
  String toString() {
    return 'ProjectEditEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_SavedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(String text) descriptionChanged,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(String text)? descriptionChanged,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(String text)? descriptionChanged,
    TResult Function()? saved,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _SavedEvent implements ProjectEditEvent {
  const factory _SavedEvent() = _$_SavedEvent;
}

/// @nodoc
abstract class _$$_UpdatedEventCopyWith<$Res> {
  factory _$$_UpdatedEventCopyWith(_$_UpdatedEvent value, $Res Function(_$_UpdatedEvent) then) =
      __$$_UpdatedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdatedEventCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res, _$_UpdatedEvent>
    implements _$$_UpdatedEventCopyWith<$Res> {
  __$$_UpdatedEventCopyWithImpl(_$_UpdatedEvent _value, $Res Function(_$_UpdatedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdatedEvent implements _UpdatedEvent {
  const _$_UpdatedEvent();

  @override
  String toString() {
    return 'ProjectEditEvent.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_UpdatedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(String text) descriptionChanged,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(String text)? descriptionChanged,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(String text)? descriptionChanged,
    TResult Function()? saved,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _UpdatedEvent implements ProjectEditEvent {
  const factory _UpdatedEvent() = _$_UpdatedEvent;
}

/// @nodoc
mixin _$ProjectEditState {
  ProjectEditStatus get status => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectEditStateCopyWith<ProjectEditState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEditStateCopyWith<$Res> {
  factory $ProjectEditStateCopyWith(ProjectEditState value, $Res Function(ProjectEditState) then) =
      _$ProjectEditStateCopyWithImpl<$Res, ProjectEditState>;
  @useResult
  $Res call(
      {ProjectEditStatus status, String id, String name, String description, String? serverError});
}

/// @nodoc
class _$ProjectEditStateCopyWithImpl<$Res, $Val extends ProjectEditState>
    implements $ProjectEditStateCopyWith<$Res> {
  _$ProjectEditStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? serverError = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectEditStatus,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectEditStateCopyWith<$Res> implements $ProjectEditStateCopyWith<$Res> {
  factory _$$_ProjectEditStateCopyWith(
          _$_ProjectEditState value, $Res Function(_$_ProjectEditState) then) =
      __$$_ProjectEditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProjectEditStatus status, String id, String name, String description, String? serverError});
}

/// @nodoc
class __$$_ProjectEditStateCopyWithImpl<$Res>
    extends _$ProjectEditStateCopyWithImpl<$Res, _$_ProjectEditState>
    implements _$$_ProjectEditStateCopyWith<$Res> {
  __$$_ProjectEditStateCopyWithImpl(
      _$_ProjectEditState _value, $Res Function(_$_ProjectEditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? serverError = freezed,
  }) {
    return _then(_$_ProjectEditState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectEditStatus,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProjectEditState implements _ProjectEditState {
  const _$_ProjectEditState(
      {this.status = ProjectEditStatus.initial,
      required this.id,
      required this.name,
      required this.description,
      this.serverError});

  @override
  @JsonKey()
  final ProjectEditStatus status;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? serverError;

  @override
  String toString() {
    return 'ProjectEditState(status: $status, id: $id, name: $name, description: $description, serverError: $serverError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectEditState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.serverError, serverError) || other.serverError == serverError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, id, name, description, serverError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectEditStateCopyWith<_$_ProjectEditState> get copyWith =>
      __$$_ProjectEditStateCopyWithImpl<_$_ProjectEditState>(this, _$identity);
}

abstract class _ProjectEditState implements ProjectEditState {
  const factory _ProjectEditState(
      {final ProjectEditStatus status,
      required final String id,
      required final String name,
      required final String description,
      final String? serverError}) = _$_ProjectEditState;

  @override
  ProjectEditStatus get status;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String? get serverError;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectEditStateCopyWith<_$_ProjectEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
