// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String projectId) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(DateTime dateTime) deadlineChanged,
    required TResult Function(bool value) clickSwitch,
    required TResult Function() saved,
    required TResult Function() updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String projectId)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(DateTime dateTime)? deadlineChanged,
    TResult? Function(bool value)? clickSwitch,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String projectId)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(DateTime dateTime)? deadlineChanged,
    TResult Function(bool value)? clickSwitch,
    TResult Function()? saved,
    TResult Function()? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditEventCopyWith<$Res> {
  factory $TaskEditEventCopyWith(TaskEditEvent value, $Res Function(TaskEditEvent) then) =
      _$TaskEditEventCopyWithImpl<$Res, TaskEditEvent>;
}

/// @nodoc
class _$TaskEditEventCopyWithImpl<$Res, $Val extends TaskEditEvent>
    implements $TaskEditEventCopyWith<$Res> {
  _$TaskEditEventCopyWithImpl(this._value, this._then);

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
  $Res call({String id, String projectId});
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res> extends _$TaskEditEventCopyWithImpl<$Res, _$_StartedEvent>
    implements _$$_StartedEventCopyWith<$Res> {
  __$$_StartedEventCopyWithImpl(_$_StartedEvent _value, $Res Function(_$_StartedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
  }) {
    return _then(_$_StartedEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartedEvent implements _StartedEvent {
  const _$_StartedEvent({required this.id, required this.projectId});

  @override
  final String id;
  @override
  final String projectId;

  @override
  String toString() {
    return 'TaskEditEvent.started(id: $id, projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) || other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedEventCopyWith<_$_StartedEvent> get copyWith =>
      __$$_StartedEventCopyWithImpl<_$_StartedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String projectId) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(DateTime dateTime) deadlineChanged,
    required TResult Function(bool value) clickSwitch,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return started(id, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String projectId)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(DateTime dateTime)? deadlineChanged,
    TResult? Function(bool value)? clickSwitch,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return started?.call(id, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String projectId)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(DateTime dateTime)? deadlineChanged,
    TResult Function(bool value)? clickSwitch,
    TResult Function()? saved,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
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
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
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
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
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

abstract class _StartedEvent implements TaskEditEvent {
  const factory _StartedEvent({required final String id, required final String projectId}) =
      _$_StartedEvent;

  String get id;
  String get projectId;
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
    extends _$TaskEditEventCopyWithImpl<$Res, _$_NameChangedEvent>
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
    return 'TaskEditEvent.nameChanged(text: $text)';
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
    required TResult Function(String id, String projectId) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(DateTime dateTime) deadlineChanged,
    required TResult Function(bool value) clickSwitch,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return nameChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String projectId)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(DateTime dateTime)? deadlineChanged,
    TResult? Function(bool value)? clickSwitch,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return nameChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String projectId)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(DateTime dateTime)? deadlineChanged,
    TResult Function(bool value)? clickSwitch,
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
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
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
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
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
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
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

abstract class _NameChangedEvent implements TaskEditEvent {
  const factory _NameChangedEvent(final String text) = _$_NameChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_NameChangedEventCopyWith<_$_NameChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeadlineChangedEventCopyWith<$Res> {
  factory _$$_DeadlineChangedEventCopyWith(
          _$_DeadlineChangedEvent value, $Res Function(_$_DeadlineChangedEvent) then) =
      __$$_DeadlineChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$_DeadlineChangedEventCopyWithImpl<$Res>
    extends _$TaskEditEventCopyWithImpl<$Res, _$_DeadlineChangedEvent>
    implements _$$_DeadlineChangedEventCopyWith<$Res> {
  __$$_DeadlineChangedEventCopyWithImpl(
      _$_DeadlineChangedEvent _value, $Res Function(_$_DeadlineChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$_DeadlineChangedEvent(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DeadlineChangedEvent implements _DeadlineChangedEvent {
  const _$_DeadlineChangedEvent(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'TaskEditEvent.deadlineChanged(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeadlineChangedEvent &&
            (identical(other.dateTime, dateTime) || other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeadlineChangedEventCopyWith<_$_DeadlineChangedEvent> get copyWith =>
      __$$_DeadlineChangedEventCopyWithImpl<_$_DeadlineChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String projectId) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(DateTime dateTime) deadlineChanged,
    required TResult Function(bool value) clickSwitch,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return deadlineChanged(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String projectId)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(DateTime dateTime)? deadlineChanged,
    TResult? Function(bool value)? clickSwitch,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return deadlineChanged?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String projectId)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(DateTime dateTime)? deadlineChanged,
    TResult Function(bool value)? clickSwitch,
    TResult Function()? saved,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (deadlineChanged != null) {
      return deadlineChanged(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return deadlineChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return deadlineChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (deadlineChanged != null) {
      return deadlineChanged(this);
    }
    return orElse();
  }
}

abstract class _DeadlineChangedEvent implements TaskEditEvent {
  const factory _DeadlineChangedEvent(final DateTime dateTime) = _$_DeadlineChangedEvent;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$_DeadlineChangedEventCopyWith<_$_DeadlineChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClickSwitchEventCopyWith<$Res> {
  factory _$$_ClickSwitchEventCopyWith(
          _$_ClickSwitchEvent value, $Res Function(_$_ClickSwitchEvent) then) =
      __$$_ClickSwitchEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_ClickSwitchEventCopyWithImpl<$Res>
    extends _$TaskEditEventCopyWithImpl<$Res, _$_ClickSwitchEvent>
    implements _$$_ClickSwitchEventCopyWith<$Res> {
  __$$_ClickSwitchEventCopyWithImpl(
      _$_ClickSwitchEvent _value, $Res Function(_$_ClickSwitchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ClickSwitchEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClickSwitchEvent implements _ClickSwitchEvent {
  const _$_ClickSwitchEvent(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'TaskEditEvent.clickSwitch(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClickSwitchEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClickSwitchEventCopyWith<_$_ClickSwitchEvent> get copyWith =>
      __$$_ClickSwitchEventCopyWithImpl<_$_ClickSwitchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String projectId) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(DateTime dateTime) deadlineChanged,
    required TResult Function(bool value) clickSwitch,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return clickSwitch(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String projectId)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(DateTime dateTime)? deadlineChanged,
    TResult? Function(bool value)? clickSwitch,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return clickSwitch?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String projectId)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(DateTime dateTime)? deadlineChanged,
    TResult Function(bool value)? clickSwitch,
    TResult Function()? saved,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (clickSwitch != null) {
      return clickSwitch(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return clickSwitch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return clickSwitch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (clickSwitch != null) {
      return clickSwitch(this);
    }
    return orElse();
  }
}

abstract class _ClickSwitchEvent implements TaskEditEvent {
  const factory _ClickSwitchEvent(final bool value) = _$_ClickSwitchEvent;

  bool get value;
  @JsonKey(ignore: true)
  _$$_ClickSwitchEventCopyWith<_$_ClickSwitchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedEventCopyWith<$Res> {
  factory _$$_SavedEventCopyWith(_$_SavedEvent value, $Res Function(_$_SavedEvent) then) =
      __$$_SavedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedEventCopyWithImpl<$Res> extends _$TaskEditEventCopyWithImpl<$Res, _$_SavedEvent>
    implements _$$_SavedEventCopyWith<$Res> {
  __$$_SavedEventCopyWithImpl(_$_SavedEvent _value, $Res Function(_$_SavedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SavedEvent implements _SavedEvent {
  const _$_SavedEvent();

  @override
  String toString() {
    return 'TaskEditEvent.saved()';
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
    required TResult Function(String id, String projectId) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(DateTime dateTime) deadlineChanged,
    required TResult Function(bool value) clickSwitch,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String projectId)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(DateTime dateTime)? deadlineChanged,
    TResult? Function(bool value)? clickSwitch,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String projectId)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(DateTime dateTime)? deadlineChanged,
    TResult Function(bool value)? clickSwitch,
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
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
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
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
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
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
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

abstract class _SavedEvent implements TaskEditEvent {
  const factory _SavedEvent() = _$_SavedEvent;
}

/// @nodoc
abstract class _$$_UpdatedEventCopyWith<$Res> {
  factory _$$_UpdatedEventCopyWith(_$_UpdatedEvent value, $Res Function(_$_UpdatedEvent) then) =
      __$$_UpdatedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdatedEventCopyWithImpl<$Res> extends _$TaskEditEventCopyWithImpl<$Res, _$_UpdatedEvent>
    implements _$$_UpdatedEventCopyWith<$Res> {
  __$$_UpdatedEventCopyWithImpl(_$_UpdatedEvent _value, $Res Function(_$_UpdatedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdatedEvent implements _UpdatedEvent {
  const _$_UpdatedEvent();

  @override
  String toString() {
    return 'TaskEditEvent.updated()';
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
    required TResult Function(String id, String projectId) started,
    required TResult Function(String text) nameChanged,
    required TResult Function(DateTime dateTime) deadlineChanged,
    required TResult Function(bool value) clickSwitch,
    required TResult Function() saved,
    required TResult Function() updated,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String projectId)? started,
    TResult? Function(String text)? nameChanged,
    TResult? Function(DateTime dateTime)? deadlineChanged,
    TResult? Function(bool value)? clickSwitch,
    TResult? Function()? saved,
    TResult? Function()? updated,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String projectId)? started,
    TResult Function(String text)? nameChanged,
    TResult Function(DateTime dateTime)? deadlineChanged,
    TResult Function(bool value)? clickSwitch,
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
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
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
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
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
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
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

abstract class _UpdatedEvent implements TaskEditEvent {
  const factory _UpdatedEvent() = _$_UpdatedEvent;
}

/// @nodoc
mixin _$TaskEditState {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  TaskEditStatus get status => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  String? get projectId => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEditStateCopyWith<TaskEditState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditStateCopyWith<$Res> {
  factory $TaskEditStateCopyWith(TaskEditState value, $Res Function(TaskEditState) then) =
      _$TaskEditStateCopyWithImpl<$Res, TaskEditState>;
  @useResult
  $Res call(
      {String id,
      String name,
      TaskEditStatus status,
      DateTime? deadline,
      String? projectId,
      bool? done,
      String? serverError});
}

/// @nodoc
class _$TaskEditStateCopyWithImpl<$Res, $Val extends TaskEditState>
    implements $TaskEditStateCopyWith<$Res> {
  _$TaskEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? deadline = freezed,
    Object? projectId = freezed,
    Object? done = freezed,
    Object? serverError = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskEditStatus,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskEditStateCopyWith<$Res> implements $TaskEditStateCopyWith<$Res> {
  factory _$$_TaskEditStateCopyWith(_$_TaskEditState value, $Res Function(_$_TaskEditState) then) =
      __$$_TaskEditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      TaskEditStatus status,
      DateTime? deadline,
      String? projectId,
      bool? done,
      String? serverError});
}

/// @nodoc
class __$$_TaskEditStateCopyWithImpl<$Res>
    extends _$TaskEditStateCopyWithImpl<$Res, _$_TaskEditState>
    implements _$$_TaskEditStateCopyWith<$Res> {
  __$$_TaskEditStateCopyWithImpl(_$_TaskEditState _value, $Res Function(_$_TaskEditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? deadline = freezed,
    Object? projectId = freezed,
    Object? done = freezed,
    Object? serverError = freezed,
  }) {
    return _then(_$_TaskEditState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskEditStatus,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TaskEditState implements _TaskEditState {
  const _$_TaskEditState(
      {required this.id,
      required this.name,
      this.status = TaskEditStatus.initial,
      this.deadline,
      this.projectId,
      this.done,
      this.serverError});

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final TaskEditStatus status;
  @override
  final DateTime? deadline;
  @override
  final String? projectId;
  @override
  final bool? done;
  @override
  final String? serverError;

  @override
  String toString() {
    return 'TaskEditState(id: $id, name: $name, status: $status, deadline: $deadline, projectId: $projectId, done: $done, serverError: $serverError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskEditState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deadline, deadline) || other.deadline == deadline) &&
            (identical(other.projectId, projectId) || other.projectId == projectId) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.serverError, serverError) || other.serverError == serverError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, status, deadline, projectId, done, serverError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskEditStateCopyWith<_$_TaskEditState> get copyWith =>
      __$$_TaskEditStateCopyWithImpl<_$_TaskEditState>(this, _$identity);
}

abstract class _TaskEditState implements TaskEditState {
  const factory _TaskEditState(
      {required final String id,
      required final String name,
      final TaskEditStatus status,
      final DateTime? deadline,
      final String? projectId,
      final bool? done,
      final String? serverError}) = _$_TaskEditState;

  @override
  String get id;
  @override
  String get name;
  @override
  TaskEditStatus get status;
  @override
  DateTime? get deadline;
  @override
  String? get projectId;
  @override
  bool? get done;
  @override
  String? get serverError;
  @override
  @JsonKey(ignore: true)
  _$$_TaskEditStateCopyWith<_$_TaskEditState> get copyWith => throw _privateConstructorUsedError;
}
