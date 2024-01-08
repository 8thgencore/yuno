// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChangedEvent value) otpChanged,
    required TResult Function(_OtpFocusLostEvent value) otpFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChangedEvent value)? otpChanged,
    TResult? Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChangedEvent value)? otpChanged,
    TResult Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$OtpChangedEventImpl implements _OtpChangedEvent {
  const _$OtpChangedEventImpl(this.text, this.index);

  @override
  final String text;
  @override
  final int index;

  @override
  String toString() {
    return 'OtpEvent.otpChanged(text: $text, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpChangedEventImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, index);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChangedEvent value) otpChanged,
    required TResult Function(_OtpFocusLostEvent value) otpFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChangedEvent value)? otpChanged,
    TResult? Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChangedEvent value)? otpChanged,
    TResult Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChangedEvent implements OtpEvent {
  const factory _OtpChangedEvent(final String text, final int index) = _$OtpChangedEventImpl;

  String get text;
  int get index;
}

/// @nodoc

class _$OtpFocusLostEventImpl implements _OtpFocusLostEvent {
  const _$OtpFocusLostEventImpl();

  @override
  String toString() {
    return 'OtpEvent.otpFocusLost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpFocusLostEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChangedEvent value) otpChanged,
    required TResult Function(_OtpFocusLostEvent value) otpFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return otpFocusLost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChangedEvent value)? otpChanged,
    TResult? Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return otpFocusLost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChangedEvent value)? otpChanged,
    TResult Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (otpFocusLost != null) {
      return otpFocusLost(this);
    }
    return orElse();
  }
}

abstract class _OtpFocusLostEvent implements OtpEvent {
  const factory _OtpFocusLostEvent() = _$OtpFocusLostEventImpl;
}

/// @nodoc

class _$ContinuedEventImpl implements _ContinuedEvent {
  const _$ContinuedEventImpl();

  @override
  String toString() {
    return 'OtpEvent.continued()';
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
    required TResult Function(_OtpChangedEvent value) otpChanged,
    required TResult Function(_OtpFocusLostEvent value) otpFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return continued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChangedEvent value)? otpChanged,
    TResult? Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return continued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChangedEvent value)? otpChanged,
    TResult Function(_OtpFocusLostEvent value)? otpFocusLost,
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

abstract class _ContinuedEvent implements OtpEvent {
  const factory _ContinuedEvent() = _$ContinuedEventImpl;
}

/// @nodoc

class _$ClosedErrorEventImpl implements _ClosedErrorEvent {
  const _$ClosedErrorEventImpl();

  @override
  String toString() {
    return 'OtpEvent.closedError()';
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
    required TResult Function(_OtpChangedEvent value) otpChanged,
    required TResult Function(_OtpFocusLostEvent value) otpFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return closedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChangedEvent value)? otpChanged,
    TResult? Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return closedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChangedEvent value)? otpChanged,
    TResult Function(_OtpFocusLostEvent value)? otpFocusLost,
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

abstract class _ClosedErrorEvent implements OtpEvent {
  const factory _ClosedErrorEvent() = _$ClosedErrorEventImpl;
}

/// @nodoc
mixin _$OtpState {
  String get otp => throw _privateConstructorUsedError;
  OtpStatus get status => throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpStateCopyWith<OtpState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
  @useResult
  $Res call({String otp, OtpStatus status, String? serverError, bool isValid});
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState> implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? status = null,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OtpStatus,
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
abstract class _$$OtpStateImplCopyWith<$Res> implements $OtpStateCopyWith<$Res> {
  factory _$$OtpStateImplCopyWith(_$OtpStateImpl value, $Res Function(_$OtpStateImpl) then) =
      __$$OtpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, OtpStatus status, String? serverError, bool isValid});
}

/// @nodoc
class __$$OtpStateImplCopyWithImpl<$Res> extends _$OtpStateCopyWithImpl<$Res, _$OtpStateImpl>
    implements _$$OtpStateImplCopyWith<$Res> {
  __$$OtpStateImplCopyWithImpl(_$OtpStateImpl _value, $Res Function(_$OtpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? status = null,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_$OtpStateImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OtpStatus,
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

class _$OtpStateImpl implements _OtpState {
  const _$OtpStateImpl(
      {required this.otp, this.status = OtpStatus.initial, this.serverError, this.isValid = false});

  @override
  final String otp;
  @override
  @JsonKey()
  final OtpStatus status;
  @override
  final String? serverError;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'OtpState(otp: $otp, status: $status, serverError: $serverError, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpStateImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.serverError, serverError) || other.serverError == serverError) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, status, serverError, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      __$$OtpStateImplCopyWithImpl<_$OtpStateImpl>(this, _$identity);
}

abstract class _OtpState implements OtpState {
  const factory _OtpState(
      {required final String otp,
      final OtpStatus status,
      final String? serverError,
      final bool isValid}) = _$OtpStateImpl;

  @override
  String get otp;
  @override
  OtpStatus get status;
  @override
  String? get serverError;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith => throw _privateConstructorUsedError;
}
