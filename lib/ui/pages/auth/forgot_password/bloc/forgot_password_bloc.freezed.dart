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

class _$EmailChangedEventImpl implements _EmailChangedEvent {
  const _$EmailChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ForgotPasswordEvent.emailChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

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
  const factory _EmailChangedEvent(final String text) = _$EmailChangedEventImpl;

  String get text;
}

/// @nodoc

class _$EmailFocusLostEventImpl implements _EmailFocusLostEvent {
  const _$EmailFocusLostEventImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.emailFocusLost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailFocusLostEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _EmailFocusLostEvent() = _$EmailFocusLostEventImpl;
}

/// @nodoc

class _$ContinuedEventImpl implements _ContinuedEvent {
  const _$ContinuedEventImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.continued()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContinuedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _ContinuedEvent() = _$ContinuedEventImpl;
}

/// @nodoc

class _$ClosedErrorEventImpl implements _ClosedErrorEvent {
  const _$ClosedErrorEventImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.closedError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClosedErrorEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _ClosedErrorEvent() = _$ClosedErrorEventImpl;
}

/// @nodoc
mixin _$ForgotPasswordState {
  String get email => throw _privateConstructorUsedError;
  ForgotPasswordStatus get status => throw _privateConstructorUsedError;
  EmailError? get emailError => throw _privateConstructorUsedError;
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
      {String email,
      ForgotPasswordStatus status,
      EmailError? emailError,
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
    Object? email = null,
    Object? status = null,
    Object? emailError = freezed,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStatus,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as EmailError?,
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
abstract class _$$ForgotPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordStateImplCopyWith(
          _$ForgotPasswordStateImpl value, $Res Function(_$ForgotPasswordStateImpl) then) =
      __$$ForgotPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      ForgotPasswordStatus status,
      EmailError? emailError,
      String? serverError,
      bool isValid});
}

/// @nodoc
class __$$ForgotPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordStateImpl>
    implements _$$ForgotPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordStateImplCopyWithImpl(
      _$ForgotPasswordStateImpl _value, $Res Function(_$ForgotPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? status = null,
    Object? emailError = freezed,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_$ForgotPasswordStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStatus,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as EmailError?,
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

class _$ForgotPasswordStateImpl implements _ForgotPasswordState {
  const _$ForgotPasswordStateImpl(
      {required this.email,
      this.status = ForgotPasswordStatus.initial,
      this.emailError,
      this.serverError,
      this.isValid = false});

  @override
  final String email;
  @override
  @JsonKey()
  final ForgotPasswordStatus status;
  @override
  final EmailError? emailError;
  @override
  final String? serverError;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'ForgotPasswordState(email: $email, status: $status, emailError: $emailError, serverError: $serverError, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.emailError, emailError) || other.emailError == emailError) &&
            (identical(other.serverError, serverError) || other.serverError == serverError) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, status, emailError, serverError, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      __$$ForgotPasswordStateImplCopyWithImpl<_$ForgotPasswordStateImpl>(this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {required final String email,
      final ForgotPasswordStatus status,
      final EmailError? emailError,
      final String? serverError,
      final bool isValid}) = _$ForgotPasswordStateImpl;

  @override
  String get email;
  @override
  ForgotPasswordStatus get status;
  @override
  EmailError? get emailError;
  @override
  String? get serverError;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
