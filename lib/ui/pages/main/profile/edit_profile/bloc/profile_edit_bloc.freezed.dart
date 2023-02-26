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
    required TResult Function(String text) usernameChanged,
    required TResult Function(String text) emailChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? firstNameChanged,
    TResult? Function(String text)? lastNameChanged,
    TResult? Function(String text)? usernameChanged,
    TResult? Function(String text)? emailChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? firstNameChanged,
    TResult Function(String text)? lastNameChanged,
    TResult Function(String text)? usernameChanged,
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
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditEventCopyWith<$Res> {
  factory $ProfileEditEventCopyWith(ProfileEditEvent value, $Res Function(ProfileEditEvent) then) =
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
  factory _$$_StartedEventCopyWith(_$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$_StartedEvent>
    implements _$$_StartedEventCopyWith<$Res> {
  __$$_StartedEventCopyWithImpl(_$_StartedEvent _value, $Res Function(_$_StartedEvent) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_StartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) usernameChanged,
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
    TResult? Function(String text)? usernameChanged,
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
    TResult Function(String text)? usernameChanged,
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
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
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
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
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
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
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
  factory _$$_FirstNameChangedEventCopyWith(
          _$_FirstNameChangedEvent value, $Res Function(_$_FirstNameChangedEvent) then) =
      __$$_FirstNameChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_FirstNameChangedEventCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$_FirstNameChangedEvent>
    implements _$$_FirstNameChangedEventCopyWith<$Res> {
  __$$_FirstNameChangedEventCopyWithImpl(
      _$_FirstNameChangedEvent _value, $Res Function(_$_FirstNameChangedEvent) _then)
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
      __$$_FirstNameChangedEventCopyWithImpl<_$_FirstNameChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) usernameChanged,
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
    TResult? Function(String text)? usernameChanged,
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
    TResult Function(String text)? usernameChanged,
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
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
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
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
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
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
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
  const factory _FirstNameChangedEvent(final String text) = _$_FirstNameChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_FirstNameChangedEventCopyWith<_$_FirstNameChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastNameChangedEventCopyWith<$Res> {
  factory _$$_LastNameChangedEventCopyWith(
          _$_LastNameChangedEvent value, $Res Function(_$_LastNameChangedEvent) then) =
      __$$_LastNameChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_LastNameChangedEventCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$_LastNameChangedEvent>
    implements _$$_LastNameChangedEventCopyWith<$Res> {
  __$$_LastNameChangedEventCopyWithImpl(
      _$_LastNameChangedEvent _value, $Res Function(_$_LastNameChangedEvent) _then)
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
      __$$_LastNameChangedEventCopyWithImpl<_$_LastNameChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) usernameChanged,
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
    TResult? Function(String text)? usernameChanged,
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
    TResult Function(String text)? usernameChanged,
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
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
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
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
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
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
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
  const factory _LastNameChangedEvent(final String text) = _$_LastNameChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_LastNameChangedEventCopyWith<_$_LastNameChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UsernameChangedEventCopyWith<$Res> {
  factory _$$_UsernameChangedEventCopyWith(
          _$_UsernameChangedEvent value, $Res Function(_$_UsernameChangedEvent) then) =
      __$$_UsernameChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_UsernameChangedEventCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$_UsernameChangedEvent>
    implements _$$_UsernameChangedEventCopyWith<$Res> {
  __$$_UsernameChangedEventCopyWithImpl(
      _$_UsernameChangedEvent _value, $Res Function(_$_UsernameChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_UsernameChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChangedEvent implements _UsernameChangedEvent {
  const _$_UsernameChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEditEvent.usernameChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsernameChangedEventCopyWith<_$_UsernameChangedEvent> get copyWith =>
      __$$_UsernameChangedEventCopyWithImpl<_$_UsernameChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) usernameChanged,
    required TResult Function(String text) emailChanged,
    required TResult Function() saved,
  }) {
    return usernameChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? firstNameChanged,
    TResult? Function(String text)? lastNameChanged,
    TResult? Function(String text)? usernameChanged,
    TResult? Function(String text)? emailChanged,
    TResult? Function()? saved,
  }) {
    return usernameChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? firstNameChanged,
    TResult Function(String text)? lastNameChanged,
    TResult Function(String text)? usernameChanged,
    TResult Function(String text)? emailChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChangedEvent implements ProfileEditEvent {
  const factory _UsernameChangedEvent(final String text) = _$_UsernameChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_UsernameChangedEventCopyWith<_$_UsernameChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedEventCopyWith<$Res> {
  factory _$$_EmailChangedEventCopyWith(
          _$_EmailChangedEvent value, $Res Function(_$_EmailChangedEvent) then) =
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
      __$$_EmailChangedEventCopyWithImpl<_$_EmailChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) usernameChanged,
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
    TResult? Function(String text)? usernameChanged,
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
    TResult Function(String text)? usernameChanged,
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
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
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
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
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
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
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
  factory _$$_SavedEventCopyWith(_$_SavedEvent value, $Res Function(_$_SavedEvent) then) =
      __$$_SavedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedEventCopyWithImpl<$Res> extends _$ProfileEditEventCopyWithImpl<$Res, _$_SavedEvent>
    implements _$$_SavedEventCopyWith<$Res> {
  __$$_SavedEventCopyWithImpl(_$_SavedEvent _value, $Res Function(_$_SavedEvent) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_SavedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) firstNameChanged,
    required TResult Function(String text) lastNameChanged,
    required TResult Function(String text) usernameChanged,
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
    TResult? Function(String text)? usernameChanged,
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
    TResult Function(String text)? usernameChanged,
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
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
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
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
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
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
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
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  ProfileEditStatus get status => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  ProfileEditEmailError? get emailError => throw _privateConstructorUsedError;
  ProfileEditUsernameError? get usernameError => throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEditStateCopyWith<ProfileEditState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditStateCopyWith<$Res> {
  factory $ProfileEditStateCopyWith(ProfileEditState value, $Res Function(ProfileEditState) then) =
      _$ProfileEditStateCopyWithImpl<$Res, ProfileEditState>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String email,
      ProfileEditStatus status,
      String? role,
      ProfileEditEmailError? emailError,
      ProfileEditUsernameError? usernameError,
      String? serverError});
}

/// @nodoc
class _$ProfileEditStateCopyWithImpl<$Res, $Val extends ProfileEditState>
    implements $ProfileEditStateCopyWith<$Res> {
  _$ProfileEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? status = null,
    Object? role = freezed,
    Object? emailError = freezed,
    Object? usernameError = freezed,
    Object? serverError = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileEditStatus,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ProfileEditEmailError?,
      usernameError: freezed == usernameError
          ? _value.usernameError
          : usernameError // ignore: cast_nullable_to_non_nullable
              as ProfileEditUsernameError?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileEditStateCopyWith<$Res> implements $ProfileEditStateCopyWith<$Res> {
  factory _$$_ProfileEditStateCopyWith(
          _$_ProfileEditState value, $Res Function(_$_ProfileEditState) then) =
      __$$_ProfileEditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String email,
      ProfileEditStatus status,
      String? role,
      ProfileEditEmailError? emailError,
      ProfileEditUsernameError? usernameError,
      String? serverError});
}

/// @nodoc
class __$$_ProfileEditStateCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$_ProfileEditState>
    implements _$$_ProfileEditStateCopyWith<$Res> {
  __$$_ProfileEditStateCopyWithImpl(
      _$_ProfileEditState _value, $Res Function(_$_ProfileEditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? status = null,
    Object? role = freezed,
    Object? emailError = freezed,
    Object? usernameError = freezed,
    Object? serverError = freezed,
  }) {
    return _then(_$_ProfileEditState(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileEditStatus,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ProfileEditEmailError?,
      usernameError: freezed == usernameError
          ? _value.usernameError
          : usernameError // ignore: cast_nullable_to_non_nullable
              as ProfileEditUsernameError?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProfileEditState implements _ProfileEditState {
  const _$_ProfileEditState(
      {required this.firstName,
      required this.lastName,
      required this.username,
      required this.email,
      this.status = ProfileEditStatus.initial,
      this.role,
      this.emailError,
      this.usernameError,
      this.serverError});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final String email;
  @override
  @JsonKey()
  final ProfileEditStatus status;
  @override
  final String? role;
  @override
  final ProfileEditEmailError? emailError;
  @override
  final ProfileEditUsernameError? usernameError;
  @override
  final String? serverError;

  @override
  String toString() {
    return 'ProfileEditState(firstName: $firstName, lastName: $lastName, username: $username, email: $email, status: $status, role: $role, emailError: $emailError, usernameError: $usernameError, serverError: $serverError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileEditState &&
            (identical(other.firstName, firstName) || other.firstName == firstName) &&
            (identical(other.lastName, lastName) || other.lastName == lastName) &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.emailError, emailError) || other.emailError == emailError) &&
            (identical(other.usernameError, usernameError) ||
                other.usernameError == usernameError) &&
            (identical(other.serverError, serverError) || other.serverError == serverError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, username, email, status, role,
      emailError, usernameError, serverError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileEditStateCopyWith<_$_ProfileEditState> get copyWith =>
      __$$_ProfileEditStateCopyWithImpl<_$_ProfileEditState>(this, _$identity);
}

abstract class _ProfileEditState implements ProfileEditState {
  const factory _ProfileEditState(
      {required final String firstName,
      required final String lastName,
      required final String username,
      required final String email,
      final ProfileEditStatus status,
      final String? role,
      final ProfileEditEmailError? emailError,
      final ProfileEditUsernameError? usernameError,
      final String? serverError}) = _$_ProfileEditState;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get username;
  @override
  String get email;
  @override
  ProfileEditStatus get status;
  @override
  String? get role;
  @override
  ProfileEditEmailError? get emailError;
  @override
  ProfileEditUsernameError? get usernameError;
  @override
  String? get serverError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileEditStateCopyWith<_$_ProfileEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
