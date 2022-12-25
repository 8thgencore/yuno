// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) nicknameChanged,
    required TResult Function(String text) emailChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? firstNameChanged,
    TResult? Function(String text)? lastNameChanged,
    TResult? Function(String text)? nicknameChanged,
    TResult? Function(String text)? emailChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? firstNameChanged,
    TResult Function(String text)? lastNameChanged,
    TResult Function(String text)? nicknameChanged,
    TResult Function(String text)? emailChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_NicknameChangedEvent value) nicknameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditEventCopyWith<$Res> {
  factory $ProfileEditEventCopyWith(
          ProfileEditEvent value, $Res Function(ProfileEditEvent) then) =
      _$ProfileEditEventCopyWithImpl<$Res, ProfileEditEvent>;
}

/// @nodoc
class _$ProfileEditEventCopyWithImpl<$Res, $Val extends ProfileEditEvent>
    implements $ProfileEditEventCopyWith<$Res> {
  _$ProfileEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(
          _$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$_StartedEvent>
    implements _$$_StartedEventCopyWith<$Res> {
  __$$_StartedEventCopyWithImpl(
      _$_StartedEvent _value, $Res Function(_$_StartedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartedEvent implements _StartedEvent {
  const _$_StartedEvent();

  @override
  String toString() {
    return 'ProfileEditEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) nicknameChanged,
    required TResult Function(String text) emailChanged,
    required TResult Function() saved,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? firstNameChanged,
    TResult? Function(String text)? lastNameChanged,
    TResult? Function(String text)? nicknameChanged,
    TResult? Function(String text)? emailChanged,
    TResult? Function()? saved,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? firstNameChanged,
    TResult Function(String text)? lastNameChanged,
    TResult Function(String text)? nicknameChanged,
    TResult Function(String text)? emailChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_NicknameChangedEvent value) nicknameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements ProfileEditEvent {
  const factory _StartedEvent() = _$_StartedEvent;
}

/// @nodoc
abstract class _$$_FirstNameChangedEventCopyWith<$Res> {
  factory _$$_FirstNameChangedEventCopyWith(_$_FirstNameChangedEvent value,
          $Res Function(_$_FirstNameChangedEvent) then) =
      __$$_FirstNameChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_FirstNameChangedEventCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$_FirstNameChangedEvent>
    implements _$$_FirstNameChangedEventCopyWith<$Res> {
  __$$_FirstNameChangedEventCopyWithImpl(_$_FirstNameChangedEvent _value,
      $Res Function(_$_FirstNameChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_FirstNameChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirstNameChangedEvent implements _FirstNameChangedEvent {
  const _$_FirstNameChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEditEvent.firstNameChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstNameChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstNameChangedEventCopyWith<_$_FirstNameChangedEvent> get copyWith =>
      __$$_FirstNameChangedEventCopyWithImpl<_$_FirstNameChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) nicknameChanged,
    required TResult Function(String text) emailChanged,
    required TResult Function() saved,
  }) {
    return firstNameChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? firstNameChanged,
    TResult? Function(String text)? lastNameChanged,
    TResult? Function(String text)? nicknameChanged,
    TResult? Function(String text)? emailChanged,
    TResult? Function()? saved,
  }) {
    return firstNameChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? firstNameChanged,
    TResult Function(String text)? lastNameChanged,
    TResult Function(String text)? nicknameChanged,
    TResult Function(String text)? emailChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_NicknameChangedEvent value) nicknameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChangedEvent implements ProfileEditEvent {
  const factory _FirstNameChangedEvent(final String text) =
      _$_FirstNameChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_FirstNameChangedEventCopyWith<_$_FirstNameChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastNameChangedEventCopyWith<$Res> {
  factory _$$_LastNameChangedEventCopyWith(_$_LastNameChangedEvent value,
          $Res Function(_$_LastNameChangedEvent) then) =
      __$$_LastNameChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_LastNameChangedEventCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$_LastNameChangedEvent>
    implements _$$_LastNameChangedEventCopyWith<$Res> {
  __$$_LastNameChangedEventCopyWithImpl(_$_LastNameChangedEvent _value,
      $Res Function(_$_LastNameChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_LastNameChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LastNameChangedEvent implements _LastNameChangedEvent {
  const _$_LastNameChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEditEvent.lastNameChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastNameChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastNameChangedEventCopyWith<_$_LastNameChangedEvent> get copyWith =>
      __$$_LastNameChangedEventCopyWithImpl<_$_LastNameChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) nicknameChanged,
    required TResult Function(String text) emailChanged,
    required TResult Function() saved,
  }) {
    return lastNameChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? firstNameChanged,
    TResult? Function(String text)? lastNameChanged,
    TResult? Function(String text)? nicknameChanged,
    TResult? Function(String text)? emailChanged,
    TResult? Function()? saved,
  }) {
    return lastNameChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? firstNameChanged,
    TResult Function(String text)? lastNameChanged,
    TResult Function(String text)? nicknameChanged,
    TResult Function(String text)? emailChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_NicknameChangedEvent value) nicknameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChangedEvent implements ProfileEditEvent {
  const factory _LastNameChangedEvent(final String text) =
      _$_LastNameChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_LastNameChangedEventCopyWith<_$_LastNameChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NicknameChangedEventCopyWith<$Res> {
  factory _$$_NicknameChangedEventCopyWith(_$_NicknameChangedEvent value,
          $Res Function(_$_NicknameChangedEvent) then) =
      __$$_NicknameChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_NicknameChangedEventCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$_NicknameChangedEvent>
    implements _$$_NicknameChangedEventCopyWith<$Res> {
  __$$_NicknameChangedEventCopyWithImpl(_$_NicknameChangedEvent _value,
      $Res Function(_$_NicknameChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_NicknameChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NicknameChangedEvent implements _NicknameChangedEvent {
  const _$_NicknameChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEditEvent.nicknameChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NicknameChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NicknameChangedEventCopyWith<_$_NicknameChangedEvent> get copyWith =>
      __$$_NicknameChangedEventCopyWithImpl<_$_NicknameChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) nicknameChanged,
    required TResult Function(String text) emailChanged,
    required TResult Function() saved,
  }) {
    return nicknameChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? firstNameChanged,
    TResult? Function(String text)? lastNameChanged,
    TResult? Function(String text)? nicknameChanged,
    TResult? Function(String text)? emailChanged,
    TResult? Function()? saved,
  }) {
    return nicknameChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? firstNameChanged,
    TResult Function(String text)? lastNameChanged,
    TResult Function(String text)? nicknameChanged,
    TResult Function(String text)? emailChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_NicknameChangedEvent value) nicknameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return nicknameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return nicknameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(this);
    }
    return orElse();
  }
}

abstract class _NicknameChangedEvent implements ProfileEditEvent {
  const factory _NicknameChangedEvent(final String text) =
      _$_NicknameChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_NicknameChangedEventCopyWith<_$_NicknameChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedEventCopyWith<$Res> {
  factory _$$_EmailChangedEventCopyWith(_$_EmailChangedEvent value,
          $Res Function(_$_EmailChangedEvent) then) =
      __$$_EmailChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_EmailChangedEventCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$_EmailChangedEvent>
    implements _$$_EmailChangedEventCopyWith<$Res> {
  __$$_EmailChangedEventCopyWithImpl(
      _$_EmailChangedEvent _value, $Res Function(_$_EmailChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_EmailChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChangedEvent implements _EmailChangedEvent {
  const _$_EmailChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEditEvent.emailChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedEventCopyWith<_$_EmailChangedEvent> get copyWith =>
      __$$_EmailChangedEventCopyWithImpl<_$_EmailChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) nicknameChanged,
    required TResult Function(String text) emailChanged,
    required TResult Function() saved,
  }) {
    return emailChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? firstNameChanged,
    TResult? Function(String text)? lastNameChanged,
    TResult? Function(String text)? nicknameChanged,
    TResult? Function(String text)? emailChanged,
    TResult? Function()? saved,
  }) {
    return emailChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? firstNameChanged,
    TResult Function(String text)? lastNameChanged,
    TResult Function(String text)? nicknameChanged,
    TResult Function(String text)? emailChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_NicknameChangedEvent value) nicknameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChangedEvent implements ProfileEditEvent {
  const factory _EmailChangedEvent(final String text) = _$_EmailChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_EmailChangedEventCopyWith<_$_EmailChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedEventCopyWith<$Res> {
  factory _$$_SavedEventCopyWith(
          _$_SavedEvent value, $Res Function(_$_SavedEvent) then) =
      __$$_SavedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedEventCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$_SavedEvent>
    implements _$$_SavedEventCopyWith<$Res> {
  __$$_SavedEventCopyWithImpl(
      _$_SavedEvent _value, $Res Function(_$_SavedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SavedEvent implements _SavedEvent {
  const _$_SavedEvent();

  @override
  String toString() {
    return 'ProfileEditEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SavedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) nicknameChanged,
    required TResult Function(String text) emailChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? firstNameChanged,
    TResult? Function(String text)? lastNameChanged,
    TResult? Function(String text)? nicknameChanged,
    TResult? Function(String text)? emailChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? firstNameChanged,
    TResult Function(String text)? lastNameChanged,
    TResult Function(String text)? nicknameChanged,
    TResult Function(String text)? emailChanged,
    TResult Function()? saved,
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
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_NicknameChangedEvent value) nicknameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_NicknameChangedEvent value)? nicknameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _SavedEvent implements ProfileEditEvent {
  const factory _SavedEvent() = _$_SavedEvent;
}

/// @nodoc
mixin _$ProfileEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IUserRead user) loaded,
    required TResult Function(Object error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IUserRead user)? loaded,
    TResult? Function(Object error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IUserRead user)? loaded,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditStateCopyWith<$Res> {
  factory $ProfileEditStateCopyWith(
          ProfileEditState value, $Res Function(ProfileEditState) then) =
      _$ProfileEditStateCopyWithImpl<$Res, ProfileEditState>;
}

/// @nodoc
class _$ProfileEditStateCopyWithImpl<$Res, $Val extends ProfileEditState>
    implements $ProfileEditStateCopyWith<$Res> {
  _$ProfileEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'ProfileEditState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IUserRead user) loaded,
    required TResult Function(Object error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IUserRead user)? loaded,
    TResult? Function(Object error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IUserRead user)? loaded,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ProfileEditState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'ProfileEditState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IUserRead user) loaded,
    required TResult Function(Object error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IUserRead user)? loaded,
    TResult? Function(Object error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IUserRead user)? loaded,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ProfileEditState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({IUserRead user});

  $IUserReadCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_LoadedState(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as IUserRead,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IUserReadCopyWith<$Res> get user {
    return $IUserReadCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_LoadedState implements _LoadedState {
  const _$_LoadedState(this.user);

  @override
  final IUserRead user;

  @override
  String toString() {
    return 'ProfileEditState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IUserRead user) loaded,
    required TResult Function(Object error) failure,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IUserRead user)? loaded,
    TResult? Function(Object error)? failure,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IUserRead user)? loaded,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements ProfileEditState {
  const factory _LoadedState(final IUserRead user) = _$_LoadedState;

  IUserRead get user;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureStateCopyWith<$Res> {
  factory _$$_FailureStateCopyWith(
          _$_FailureState value, $Res Function(_$_FailureState) then) =
      __$$_FailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_FailureStateCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$_FailureState>
    implements _$$_FailureStateCopyWith<$Res> {
  __$$_FailureStateCopyWithImpl(
      _$_FailureState _value, $Res Function(_$_FailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_FailureState(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_FailureState implements _FailureState {
  const _$_FailureState(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'ProfileEditState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureStateCopyWith<_$_FailureState> get copyWith =>
      __$$_FailureStateCopyWithImpl<_$_FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IUserRead user) loaded,
    required TResult Function(Object error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IUserRead user)? loaded,
    TResult? Function(Object error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IUserRead user)? loaded,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState implements ProfileEditState {
  const factory _FailureState(final Object error) = _$_FailureState;

  Object get error;
  @JsonKey(ignore: true)
  _$$_FailureStateCopyWith<_$_FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
