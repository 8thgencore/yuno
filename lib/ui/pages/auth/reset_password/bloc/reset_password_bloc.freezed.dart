// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) passwordChanged,
    required TResult Function() passwordFocusLost,
    required TResult Function(String text) passwordConfirmChanged,
    required TResult Function() passwordConfirmFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? passwordChanged,
    TResult? Function()? passwordFocusLost,
    TResult? Function(String text)? passwordConfirmChanged,
    TResult? Function()? passwordConfirmFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? passwordChanged,
    TResult Function()? passwordFocusLost,
    TResult Function(String text)? passwordConfirmChanged,
    TResult Function()? passwordConfirmFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value) passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value) passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(
          ResetPasswordEvent value, $Res Function(ResetPasswordEvent) then) =
      _$ResetPasswordEventCopyWithImpl<$Res, ResetPasswordEvent>;
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res, $Val extends ResetPasswordEvent>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PasswordChangedEventCopyWith<$Res> {
  factory _$$_PasswordChangedEventCopyWith(
          _$_PasswordChangedEvent value, $Res Function(_$_PasswordChangedEvent) then) =
      __$$_PasswordChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_PasswordChangedEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$_PasswordChangedEvent>
    implements _$$_PasswordChangedEventCopyWith<$Res> {
  __$$_PasswordChangedEventCopyWithImpl(
      _$_PasswordChangedEvent _value, $Res Function(_$_PasswordChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_PasswordChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChangedEvent implements _PasswordChangedEvent {
  const _$_PasswordChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ResetPasswordEvent.passwordChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedEventCopyWith<_$_PasswordChangedEvent> get copyWith =>
      __$$_PasswordChangedEventCopyWithImpl<_$_PasswordChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) passwordChanged,
    required TResult Function() passwordFocusLost,
    required TResult Function(String text) passwordConfirmChanged,
    required TResult Function() passwordConfirmFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return passwordChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? passwordChanged,
    TResult? Function()? passwordFocusLost,
    TResult? Function(String text)? passwordConfirmChanged,
    TResult? Function()? passwordConfirmFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return passwordChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? passwordChanged,
    TResult Function()? passwordFocusLost,
    TResult Function(String text)? passwordConfirmChanged,
    TResult Function()? passwordConfirmFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value) passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value) passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChangedEvent implements ResetPasswordEvent {
  const factory _PasswordChangedEvent(final String text) = _$_PasswordChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_PasswordChangedEventCopyWith<_$_PasswordChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordFocusLostEventCopyWith<$Res> {
  factory _$$_PasswordFocusLostEventCopyWith(
          _$_PasswordFocusLostEvent value, $Res Function(_$_PasswordFocusLostEvent) then) =
      __$$_PasswordFocusLostEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PasswordFocusLostEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$_PasswordFocusLostEvent>
    implements _$$_PasswordFocusLostEventCopyWith<$Res> {
  __$$_PasswordFocusLostEventCopyWithImpl(
      _$_PasswordFocusLostEvent _value, $Res Function(_$_PasswordFocusLostEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PasswordFocusLostEvent implements _PasswordFocusLostEvent {
  const _$_PasswordFocusLostEvent();

  @override
  String toString() {
    return 'ResetPasswordEvent.passwordFocusLost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PasswordFocusLostEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) passwordChanged,
    required TResult Function() passwordFocusLost,
    required TResult Function(String text) passwordConfirmChanged,
    required TResult Function() passwordConfirmFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return passwordFocusLost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? passwordChanged,
    TResult? Function()? passwordFocusLost,
    TResult? Function(String text)? passwordConfirmChanged,
    TResult? Function()? passwordConfirmFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return passwordFocusLost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? passwordChanged,
    TResult Function()? passwordFocusLost,
    TResult Function(String text)? passwordConfirmChanged,
    TResult Function()? passwordConfirmFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (passwordFocusLost != null) {
      return passwordFocusLost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value) passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value) passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return passwordFocusLost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return passwordFocusLost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (passwordFocusLost != null) {
      return passwordFocusLost(this);
    }
    return orElse();
  }
}

abstract class _PasswordFocusLostEvent implements ResetPasswordEvent {
  const factory _PasswordFocusLostEvent() = _$_PasswordFocusLostEvent;
}

/// @nodoc
abstract class _$$_PasswordConfirmChangedEventCopyWith<$Res> {
  factory _$$_PasswordConfirmChangedEventCopyWith(_$_PasswordConfirmChangedEvent value,
          $Res Function(_$_PasswordConfirmChangedEvent) then) =
      __$$_PasswordConfirmChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_PasswordConfirmChangedEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$_PasswordConfirmChangedEvent>
    implements _$$_PasswordConfirmChangedEventCopyWith<$Res> {
  __$$_PasswordConfirmChangedEventCopyWithImpl(
      _$_PasswordConfirmChangedEvent _value, $Res Function(_$_PasswordConfirmChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_PasswordConfirmChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordConfirmChangedEvent implements _PasswordConfirmChangedEvent {
  const _$_PasswordConfirmChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ResetPasswordEvent.passwordConfirmChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordConfirmChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordConfirmChangedEventCopyWith<_$_PasswordConfirmChangedEvent> get copyWith =>
      __$$_PasswordConfirmChangedEventCopyWithImpl<_$_PasswordConfirmChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) passwordChanged,
    required TResult Function() passwordFocusLost,
    required TResult Function(String text) passwordConfirmChanged,
    required TResult Function() passwordConfirmFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return passwordConfirmChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? passwordChanged,
    TResult? Function()? passwordFocusLost,
    TResult? Function(String text)? passwordConfirmChanged,
    TResult? Function()? passwordConfirmFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return passwordConfirmChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? passwordChanged,
    TResult Function()? passwordFocusLost,
    TResult Function(String text)? passwordConfirmChanged,
    TResult Function()? passwordConfirmFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (passwordConfirmChanged != null) {
      return passwordConfirmChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value) passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value) passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return passwordConfirmChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return passwordConfirmChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (passwordConfirmChanged != null) {
      return passwordConfirmChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordConfirmChangedEvent implements ResetPasswordEvent {
  const factory _PasswordConfirmChangedEvent(final String text) = _$_PasswordConfirmChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_PasswordConfirmChangedEventCopyWith<_$_PasswordConfirmChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordConfirmFocusLostEventCopyWith<$Res> {
  factory _$$_PasswordConfirmFocusLostEventCopyWith(_$_PasswordConfirmFocusLostEvent value,
          $Res Function(_$_PasswordConfirmFocusLostEvent) then) =
      __$$_PasswordConfirmFocusLostEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PasswordConfirmFocusLostEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$_PasswordConfirmFocusLostEvent>
    implements _$$_PasswordConfirmFocusLostEventCopyWith<$Res> {
  __$$_PasswordConfirmFocusLostEventCopyWithImpl(_$_PasswordConfirmFocusLostEvent _value,
      $Res Function(_$_PasswordConfirmFocusLostEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PasswordConfirmFocusLostEvent implements _PasswordConfirmFocusLostEvent {
  const _$_PasswordConfirmFocusLostEvent();

  @override
  String toString() {
    return 'ResetPasswordEvent.passwordConfirmFocusLost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PasswordConfirmFocusLostEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) passwordChanged,
    required TResult Function() passwordFocusLost,
    required TResult Function(String text) passwordConfirmChanged,
    required TResult Function() passwordConfirmFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return passwordConfirmFocusLost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? passwordChanged,
    TResult? Function()? passwordFocusLost,
    TResult? Function(String text)? passwordConfirmChanged,
    TResult? Function()? passwordConfirmFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return passwordConfirmFocusLost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? passwordChanged,
    TResult Function()? passwordFocusLost,
    TResult Function(String text)? passwordConfirmChanged,
    TResult Function()? passwordConfirmFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (passwordConfirmFocusLost != null) {
      return passwordConfirmFocusLost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value) passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value) passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return passwordConfirmFocusLost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return passwordConfirmFocusLost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (passwordConfirmFocusLost != null) {
      return passwordConfirmFocusLost(this);
    }
    return orElse();
  }
}

abstract class _PasswordConfirmFocusLostEvent implements ResetPasswordEvent {
  const factory _PasswordConfirmFocusLostEvent() = _$_PasswordConfirmFocusLostEvent;
}

/// @nodoc
abstract class _$$_ContinuedEventCopyWith<$Res> {
  factory _$$_ContinuedEventCopyWith(
          _$_ContinuedEvent value, $Res Function(_$_ContinuedEvent) then) =
      __$$_ContinuedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContinuedEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$_ContinuedEvent>
    implements _$$_ContinuedEventCopyWith<$Res> {
  __$$_ContinuedEventCopyWithImpl(_$_ContinuedEvent _value, $Res Function(_$_ContinuedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContinuedEvent implements _ContinuedEvent {
  const _$_ContinuedEvent();

  @override
  String toString() {
    return 'ResetPasswordEvent.continued()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContinuedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) passwordChanged,
    required TResult Function() passwordFocusLost,
    required TResult Function(String text) passwordConfirmChanged,
    required TResult Function() passwordConfirmFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return continued();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? passwordChanged,
    TResult? Function()? passwordFocusLost,
    TResult? Function(String text)? passwordConfirmChanged,
    TResult? Function()? passwordConfirmFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return continued?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? passwordChanged,
    TResult Function()? passwordFocusLost,
    TResult Function(String text)? passwordConfirmChanged,
    TResult Function()? passwordConfirmFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (continued != null) {
      return continued();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value) passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value) passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return continued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return continued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (continued != null) {
      return continued(this);
    }
    return orElse();
  }
}

abstract class _ContinuedEvent implements ResetPasswordEvent {
  const factory _ContinuedEvent() = _$_ContinuedEvent;
}

/// @nodoc
abstract class _$$_ClosedErrorEventCopyWith<$Res> {
  factory _$$_ClosedErrorEventCopyWith(
          _$_ClosedErrorEvent value, $Res Function(_$_ClosedErrorEvent) then) =
      __$$_ClosedErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClosedErrorEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$_ClosedErrorEvent>
    implements _$$_ClosedErrorEventCopyWith<$Res> {
  __$$_ClosedErrorEventCopyWithImpl(
      _$_ClosedErrorEvent _value, $Res Function(_$_ClosedErrorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClosedErrorEvent implements _ClosedErrorEvent {
  const _$_ClosedErrorEvent();

  @override
  String toString() {
    return 'ResetPasswordEvent.closedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClosedErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) passwordChanged,
    required TResult Function() passwordFocusLost,
    required TResult Function(String text) passwordConfirmChanged,
    required TResult Function() passwordConfirmFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return closedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? passwordChanged,
    TResult? Function()? passwordFocusLost,
    TResult? Function(String text)? passwordConfirmChanged,
    TResult? Function()? passwordConfirmFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return closedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? passwordChanged,
    TResult Function()? passwordFocusLost,
    TResult Function(String text)? passwordConfirmChanged,
    TResult Function()? passwordConfirmFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (closedError != null) {
      return closedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value) passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value) passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return closedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return closedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)? passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)? passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (closedError != null) {
      return closedError(this);
    }
    return orElse();
  }
}

abstract class _ClosedErrorEvent implements ResetPasswordEvent {
  const factory _ClosedErrorEvent() = _$_ClosedErrorEvent;
}

/// @nodoc
mixin _$ResetPasswordState {
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;
  ResetPasswordStatus get status => throw _privateConstructorUsedError;
  PasswordError? get passwordError => throw _privateConstructorUsedError;
  PasswordConfirmError? get passwordConfirmError => throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res, ResetPasswordState>;
  @useResult
  $Res call(
      {String password,
      String passwordConfirm,
      ResetPasswordStatus status,
      PasswordError? passwordError,
      PasswordConfirmError? passwordConfirmError,
      String? serverError,
      bool isValid});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res, $Val extends ResetPasswordState>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordConfirm = null,
    Object? status = null,
    Object? passwordError = freezed,
    Object? passwordConfirmError = freezed,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResetPasswordStatus,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as PasswordError?,
      passwordConfirmError: freezed == passwordConfirmError
          ? _value.passwordConfirmError
          : passwordConfirmError // ignore: cast_nullable_to_non_nullable
              as PasswordConfirmError?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPasswordStateCopyWith<$Res> implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$_ResetPasswordStateCopyWith(
          _$_ResetPasswordState value, $Res Function(_$_ResetPasswordState) then) =
      __$$_ResetPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String password,
      String passwordConfirm,
      ResetPasswordStatus status,
      PasswordError? passwordError,
      PasswordConfirmError? passwordConfirmError,
      String? serverError,
      bool isValid});
}

/// @nodoc
class __$$_ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$_ResetPasswordState>
    implements _$$_ResetPasswordStateCopyWith<$Res> {
  __$$_ResetPasswordStateCopyWithImpl(
      _$_ResetPasswordState _value, $Res Function(_$_ResetPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordConfirm = null,
    Object? status = null,
    Object? passwordError = freezed,
    Object? passwordConfirmError = freezed,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_$_ResetPasswordState(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResetPasswordStatus,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as PasswordError?,
      passwordConfirmError: freezed == passwordConfirmError
          ? _value.passwordConfirmError
          : passwordConfirmError // ignore: cast_nullable_to_non_nullable
              as PasswordConfirmError?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordState implements _ResetPasswordState {
  const _$_ResetPasswordState(
      {required this.password,
      required this.passwordConfirm,
      this.status = ResetPasswordStatus.initial,
      this.passwordError,
      this.passwordConfirmError,
      this.serverError,
      this.isValid = false});

  @override
  final String password;
  @override
  final String passwordConfirm;
  @override
  @JsonKey()
  final ResetPasswordStatus status;
  @override
  final PasswordError? passwordError;
  @override
  final PasswordConfirmError? passwordConfirmError;
  @override
  final String? serverError;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'ResetPasswordState(password: $password, passwordConfirm: $passwordConfirm, status: $status, passwordError: $passwordError, passwordConfirmError: $passwordConfirmError, serverError: $serverError, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordState &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.passwordConfirmError, passwordConfirmError) ||
                other.passwordConfirmError == passwordConfirmError) &&
            (identical(other.serverError, serverError) || other.serverError == serverError) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, passwordConfirm, status, passwordError,
      passwordConfirmError, serverError, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      __$$_ResetPasswordStateCopyWithImpl<_$_ResetPasswordState>(this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {required final String password,
      required final String passwordConfirm,
      final ResetPasswordStatus status,
      final PasswordError? passwordError,
      final PasswordConfirmError? passwordConfirmError,
      final String? serverError,
      final bool isValid}) = _$_ResetPasswordState;

  @override
  String get password;
  @override
  String get passwordConfirm;
  @override
  ResetPasswordStatus get status;
  @override
  PasswordError? get passwordError;
  @override
  PasswordConfirmError? get passwordConfirmError;
  @override
  String? get serverError;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
