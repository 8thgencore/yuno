// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) emailChanged,
    required TResult Function() emailFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? emailChanged,
    TResult? Function()? emailFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? emailChanged,
    TResult Function()? emailFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_EmailFocusLostEvent value) emailFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_EmailFocusLostEvent value)? emailFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_EmailFocusLostEvent value)? emailFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$_EmailChangedEvent>
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
    return 'ForgotPasswordEvent.emailChanged(text: $text)';
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
    required TResult Function(String text) emailChanged,
    required TResult Function() emailFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return emailChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? emailChanged,
    TResult? Function()? emailFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return emailChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? emailChanged,
    TResult Function()? emailFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
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
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_EmailFocusLostEvent value) emailFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_EmailFocusLostEvent value)? emailFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_EmailFocusLostEvent value)? emailFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChangedEvent implements ForgotPasswordEvent {
  const factory _EmailChangedEvent(final String text) = _$_EmailChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_EmailChangedEventCopyWith<_$_EmailChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailFocusLostEventCopyWith<$Res> {
  factory _$$_EmailFocusLostEventCopyWith(
          _$_EmailFocusLostEvent value, $Res Function(_$_EmailFocusLostEvent) then) =
      __$$_EmailFocusLostEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailFocusLostEventCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$_EmailFocusLostEvent>
    implements _$$_EmailFocusLostEventCopyWith<$Res> {
  __$$_EmailFocusLostEventCopyWithImpl(
      _$_EmailFocusLostEvent _value, $Res Function(_$_EmailFocusLostEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmailFocusLostEvent implements _EmailFocusLostEvent {
  const _$_EmailFocusLostEvent();

  @override
  String toString() {
    return 'ForgotPasswordEvent.emailFocusLost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmailFocusLostEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) emailChanged,
    required TResult Function() emailFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return emailFocusLost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? emailChanged,
    TResult? Function()? emailFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return emailFocusLost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? emailChanged,
    TResult Function()? emailFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (emailFocusLost != null) {
      return emailFocusLost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_EmailFocusLostEvent value) emailFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return emailFocusLost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_EmailFocusLostEvent value)? emailFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return emailFocusLost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_EmailFocusLostEvent value)? emailFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (emailFocusLost != null) {
      return emailFocusLost(this);
    }
    return orElse();
  }
}

abstract class _EmailFocusLostEvent implements ForgotPasswordEvent {
  const factory _EmailFocusLostEvent() = _$_EmailFocusLostEvent;
}

/// @nodoc
abstract class _$$_ContinuedEventCopyWith<$Res> {
  factory _$$_ContinuedEventCopyWith(
          _$_ContinuedEvent value, $Res Function(_$_ContinuedEvent) then) =
      __$$_ContinuedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContinuedEventCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$_ContinuedEvent>
    implements _$$_ContinuedEventCopyWith<$Res> {
  __$$_ContinuedEventCopyWithImpl(_$_ContinuedEvent _value, $Res Function(_$_ContinuedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContinuedEvent implements _ContinuedEvent {
  const _$_ContinuedEvent();

  @override
  String toString() {
    return 'ForgotPasswordEvent.continued()';
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
    required TResult Function(String text) emailChanged,
    required TResult Function() emailFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return continued();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? emailChanged,
    TResult? Function()? emailFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return continued?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? emailChanged,
    TResult Function()? emailFocusLost,
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
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_EmailFocusLostEvent value) emailFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return continued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_EmailFocusLostEvent value)? emailFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return continued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_EmailFocusLostEvent value)? emailFocusLost,
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

abstract class _ContinuedEvent implements ForgotPasswordEvent {
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$_ClosedErrorEvent>
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
    return 'ForgotPasswordEvent.closedError()';
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
    required TResult Function(String text) emailChanged,
    required TResult Function() emailFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return closedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? emailChanged,
    TResult? Function()? emailFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return closedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? emailChanged,
    TResult Function()? emailFocusLost,
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
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_EmailFocusLostEvent value) emailFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return closedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_EmailFocusLostEvent value)? emailFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return closedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_EmailFocusLostEvent value)? emailFocusLost,
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

abstract class _ClosedErrorEvent implements ForgotPasswordEvent {
  const factory _ClosedErrorEvent() = _$_ClosedErrorEvent;
}

/// @nodoc
mixin _$ForgotPasswordState {
  ForgotPasswordStatus get status => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  ForgotPasswordEmailError? get emailError => throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call(
      {ForgotPasswordStatus status,
      String email,
      ForgotPasswordEmailError? emailError,
      String? serverError,
      bool isValid});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? emailError = freezed,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordEmailError?,
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
abstract class _$$_ForgotPasswordStateCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$_ForgotPasswordStateCopyWith(
          _$_ForgotPasswordState value, $Res Function(_$_ForgotPasswordState) then) =
      __$$_ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ForgotPasswordStatus status,
      String email,
      ForgotPasswordEmailError? emailError,
      String? serverError,
      bool isValid});
}

/// @nodoc
class __$$_ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$_ForgotPasswordState>
    implements _$$_ForgotPasswordStateCopyWith<$Res> {
  __$$_ForgotPasswordStateCopyWithImpl(
      _$_ForgotPasswordState _value, $Res Function(_$_ForgotPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? emailError = freezed,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_$_ForgotPasswordState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordEmailError?,
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

class _$_ForgotPasswordState implements _ForgotPasswordState {
  const _$_ForgotPasswordState(
      {this.status = ForgotPasswordStatus.initial,
      required this.email,
      this.emailError,
      this.serverError,
      this.isValid = false});

  @override
  @JsonKey()
  final ForgotPasswordStatus status;
  @override
  final String email;
  @override
  final ForgotPasswordEmailError? emailError;
  @override
  final String? serverError;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'ForgotPasswordState(status: $status, email: $email, emailError: $emailError, serverError: $serverError, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailError, emailError) || other.emailError == emailError) &&
            (identical(other.serverError, serverError) || other.serverError == serverError) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, email, emailError, serverError, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      __$$_ForgotPasswordStateCopyWithImpl<_$_ForgotPasswordState>(this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {final ForgotPasswordStatus status,
      required final String email,
      final ForgotPasswordEmailError? emailError,
      final String? serverError,
      final bool isValid}) = _$_ForgotPasswordState;

  @override
  ForgotPasswordStatus get status;
  @override
  String get email;
  @override
  ForgotPasswordEmailError? get emailError;
  @override
  String? get serverError;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
