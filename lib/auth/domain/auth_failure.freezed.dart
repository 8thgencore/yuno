// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverUnknownError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() serverUserNotFound,
    required TResult Function() serverInvalidEmail,
    required TResult Function() serverEmailNotVerified,
    required TResult Function() serverEmailAlreadyInUse,
    required TResult Function() serverWrongEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerUnknownError value) serverUnknownError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerUserNotFound value) serverUserNotFound,
    required TResult Function(_ServerInvalidEmail value) serverInvalidEmail,
    required TResult Function(_ServerEmailNotVerified value)
        serverEmailNotVerified,
    required TResult Function(_ServerEmailAlreadyInUse value)
        serverEmailAlreadyInUse,
    required TResult Function(_ServerWrongEmailAndPasswordCombination value)
        serverWrongEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$$_ServerUnknownErrorCopyWith<$Res> {
  factory _$$_ServerUnknownErrorCopyWith(_$_ServerUnknownError value,
          $Res Function(_$_ServerUnknownError) then) =
      __$$_ServerUnknownErrorCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_ServerUnknownErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerUnknownErrorCopyWith<$Res> {
  __$$_ServerUnknownErrorCopyWithImpl(
      _$_ServerUnknownError _value, $Res Function(_$_ServerUnknownError) _then)
      : super(_value, (v) => _then(v as _$_ServerUnknownError));

  @override
  _$_ServerUnknownError get _value => super._value as _$_ServerUnknownError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ServerUnknownError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerUnknownError implements _ServerUnknownError {
  const _$_ServerUnknownError({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthFailure.serverUnknownError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerUnknownError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ServerUnknownErrorCopyWith<_$_ServerUnknownError> get copyWith =>
      __$$_ServerUnknownErrorCopyWithImpl<_$_ServerUnknownError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverUnknownError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() serverUserNotFound,
    required TResult Function() serverInvalidEmail,
    required TResult Function() serverEmailNotVerified,
    required TResult Function() serverEmailAlreadyInUse,
    required TResult Function() serverWrongEmailAndPasswordCombination,
  }) {
    return serverUnknownError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
  }) {
    return serverUnknownError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverUnknownError != null) {
      return serverUnknownError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerUnknownError value) serverUnknownError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerUserNotFound value) serverUserNotFound,
    required TResult Function(_ServerInvalidEmail value) serverInvalidEmail,
    required TResult Function(_ServerEmailNotVerified value)
        serverEmailNotVerified,
    required TResult Function(_ServerEmailAlreadyInUse value)
        serverEmailAlreadyInUse,
    required TResult Function(_ServerWrongEmailAndPasswordCombination value)
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverUnknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverUnknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverUnknownError != null) {
      return serverUnknownError(this);
    }
    return orElse();
  }
}

abstract class _ServerUnknownError implements AuthFailure {
  const factory _ServerUnknownError({final String? errorMessage}) =
      _$_ServerUnknownError;

  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ServerUnknownErrorCopyWith<_$_ServerUnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoInternetCopyWith<$Res> {
  factory _$$_NoInternetCopyWith(
          _$_NoInternet value, $Res Function(_$_NoInternet) then) =
      __$$_NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoInternetCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_NoInternetCopyWith<$Res> {
  __$$_NoInternetCopyWithImpl(
      _$_NoInternet _value, $Res Function(_$_NoInternet) _then)
      : super(_value, (v) => _then(v as _$_NoInternet));

  @override
  _$_NoInternet get _value => super._value as _$_NoInternet;
}

/// @nodoc

class _$_NoInternet implements _NoInternet {
  const _$_NoInternet();

  @override
  String toString() {
    return 'AuthFailure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverUnknownError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() serverUserNotFound,
    required TResult Function() serverInvalidEmail,
    required TResult Function() serverEmailNotVerified,
    required TResult Function() serverEmailAlreadyInUse,
    required TResult Function() serverWrongEmailAndPasswordCombination,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerUnknownError value) serverUnknownError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerUserNotFound value) serverUserNotFound,
    required TResult Function(_ServerInvalidEmail value) serverInvalidEmail,
    required TResult Function(_ServerEmailNotVerified value)
        serverEmailNotVerified,
    required TResult Function(_ServerEmailAlreadyInUse value)
        serverEmailAlreadyInUse,
    required TResult Function(_ServerWrongEmailAndPasswordCombination value)
        serverWrongEmailAndPasswordCombination,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements AuthFailure {
  const factory _NoInternet() = _$_NoInternet;
}

/// @nodoc
abstract class _$$_CancelledByUserCopyWith<$Res> {
  factory _$$_CancelledByUserCopyWith(
          _$_CancelledByUser value, $Res Function(_$_CancelledByUser) then) =
      __$$_CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_CancelledByUserCopyWith<$Res> {
  __$$_CancelledByUserCopyWithImpl(
      _$_CancelledByUser _value, $Res Function(_$_CancelledByUser) _then)
      : super(_value, (v) => _then(v as _$_CancelledByUser));

  @override
  _$_CancelledByUser get _value => super._value as _$_CancelledByUser;
}

/// @nodoc

class _$_CancelledByUser implements _CancelledByUser {
  const _$_CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverUnknownError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() serverUserNotFound,
    required TResult Function() serverInvalidEmail,
    required TResult Function() serverEmailNotVerified,
    required TResult Function() serverEmailAlreadyInUse,
    required TResult Function() serverWrongEmailAndPasswordCombination,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerUnknownError value) serverUnknownError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerUserNotFound value) serverUserNotFound,
    required TResult Function(_ServerInvalidEmail value) serverInvalidEmail,
    required TResult Function(_ServerEmailNotVerified value)
        serverEmailNotVerified,
    required TResult Function(_ServerEmailAlreadyInUse value)
        serverEmailAlreadyInUse,
    required TResult Function(_ServerWrongEmailAndPasswordCombination value)
        serverWrongEmailAndPasswordCombination,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class _CancelledByUser implements AuthFailure {
  const factory _CancelledByUser() = _$_CancelledByUser;
}

/// @nodoc
abstract class _$$_ServerUserNotFoundCopyWith<$Res> {
  factory _$$_ServerUserNotFoundCopyWith(_$_ServerUserNotFound value,
          $Res Function(_$_ServerUserNotFound) then) =
      __$$_ServerUserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerUserNotFoundCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerUserNotFoundCopyWith<$Res> {
  __$$_ServerUserNotFoundCopyWithImpl(
      _$_ServerUserNotFound _value, $Res Function(_$_ServerUserNotFound) _then)
      : super(_value, (v) => _then(v as _$_ServerUserNotFound));

  @override
  _$_ServerUserNotFound get _value => super._value as _$_ServerUserNotFound;
}

/// @nodoc

class _$_ServerUserNotFound implements _ServerUserNotFound {
  const _$_ServerUserNotFound();

  @override
  String toString() {
    return 'AuthFailure.serverUserNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerUserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverUnknownError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() serverUserNotFound,
    required TResult Function() serverInvalidEmail,
    required TResult Function() serverEmailNotVerified,
    required TResult Function() serverEmailAlreadyInUse,
    required TResult Function() serverWrongEmailAndPasswordCombination,
  }) {
    return serverUserNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
  }) {
    return serverUserNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverUserNotFound != null) {
      return serverUserNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerUnknownError value) serverUnknownError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerUserNotFound value) serverUserNotFound,
    required TResult Function(_ServerInvalidEmail value) serverInvalidEmail,
    required TResult Function(_ServerEmailNotVerified value)
        serverEmailNotVerified,
    required TResult Function(_ServerEmailAlreadyInUse value)
        serverEmailAlreadyInUse,
    required TResult Function(_ServerWrongEmailAndPasswordCombination value)
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverUserNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverUserNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverUserNotFound != null) {
      return serverUserNotFound(this);
    }
    return orElse();
  }
}

abstract class _ServerUserNotFound implements AuthFailure {
  const factory _ServerUserNotFound() = _$_ServerUserNotFound;
}

/// @nodoc
abstract class _$$_ServerInvalidEmailCopyWith<$Res> {
  factory _$$_ServerInvalidEmailCopyWith(_$_ServerInvalidEmail value,
          $Res Function(_$_ServerInvalidEmail) then) =
      __$$_ServerInvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerInvalidEmailCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerInvalidEmailCopyWith<$Res> {
  __$$_ServerInvalidEmailCopyWithImpl(
      _$_ServerInvalidEmail _value, $Res Function(_$_ServerInvalidEmail) _then)
      : super(_value, (v) => _then(v as _$_ServerInvalidEmail));

  @override
  _$_ServerInvalidEmail get _value => super._value as _$_ServerInvalidEmail;
}

/// @nodoc

class _$_ServerInvalidEmail implements _ServerInvalidEmail {
  const _$_ServerInvalidEmail();

  @override
  String toString() {
    return 'AuthFailure.serverInvalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerInvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverUnknownError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() serverUserNotFound,
    required TResult Function() serverInvalidEmail,
    required TResult Function() serverEmailNotVerified,
    required TResult Function() serverEmailAlreadyInUse,
    required TResult Function() serverWrongEmailAndPasswordCombination,
  }) {
    return serverInvalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
  }) {
    return serverInvalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverInvalidEmail != null) {
      return serverInvalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerUnknownError value) serverUnknownError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerUserNotFound value) serverUserNotFound,
    required TResult Function(_ServerInvalidEmail value) serverInvalidEmail,
    required TResult Function(_ServerEmailNotVerified value)
        serverEmailNotVerified,
    required TResult Function(_ServerEmailAlreadyInUse value)
        serverEmailAlreadyInUse,
    required TResult Function(_ServerWrongEmailAndPasswordCombination value)
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverInvalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverInvalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverInvalidEmail != null) {
      return serverInvalidEmail(this);
    }
    return orElse();
  }
}

abstract class _ServerInvalidEmail implements AuthFailure {
  const factory _ServerInvalidEmail() = _$_ServerInvalidEmail;
}

/// @nodoc
abstract class _$$_ServerEmailNotVerifiedCopyWith<$Res> {
  factory _$$_ServerEmailNotVerifiedCopyWith(_$_ServerEmailNotVerified value,
          $Res Function(_$_ServerEmailNotVerified) then) =
      __$$_ServerEmailNotVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerEmailNotVerifiedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerEmailNotVerifiedCopyWith<$Res> {
  __$$_ServerEmailNotVerifiedCopyWithImpl(_$_ServerEmailNotVerified _value,
      $Res Function(_$_ServerEmailNotVerified) _then)
      : super(_value, (v) => _then(v as _$_ServerEmailNotVerified));

  @override
  _$_ServerEmailNotVerified get _value =>
      super._value as _$_ServerEmailNotVerified;
}

/// @nodoc

class _$_ServerEmailNotVerified implements _ServerEmailNotVerified {
  const _$_ServerEmailNotVerified();

  @override
  String toString() {
    return 'AuthFailure.serverEmailNotVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerEmailNotVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverUnknownError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() serverUserNotFound,
    required TResult Function() serverInvalidEmail,
    required TResult Function() serverEmailNotVerified,
    required TResult Function() serverEmailAlreadyInUse,
    required TResult Function() serverWrongEmailAndPasswordCombination,
  }) {
    return serverEmailNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
  }) {
    return serverEmailNotVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverEmailNotVerified != null) {
      return serverEmailNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerUnknownError value) serverUnknownError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerUserNotFound value) serverUserNotFound,
    required TResult Function(_ServerInvalidEmail value) serverInvalidEmail,
    required TResult Function(_ServerEmailNotVerified value)
        serverEmailNotVerified,
    required TResult Function(_ServerEmailAlreadyInUse value)
        serverEmailAlreadyInUse,
    required TResult Function(_ServerWrongEmailAndPasswordCombination value)
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverEmailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverEmailNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverEmailNotVerified != null) {
      return serverEmailNotVerified(this);
    }
    return orElse();
  }
}

abstract class _ServerEmailNotVerified implements AuthFailure {
  const factory _ServerEmailNotVerified() = _$_ServerEmailNotVerified;
}

/// @nodoc
abstract class _$$_ServerEmailAlreadyInUseCopyWith<$Res> {
  factory _$$_ServerEmailAlreadyInUseCopyWith(_$_ServerEmailAlreadyInUse value,
          $Res Function(_$_ServerEmailAlreadyInUse) then) =
      __$$_ServerEmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerEmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerEmailAlreadyInUseCopyWith<$Res> {
  __$$_ServerEmailAlreadyInUseCopyWithImpl(_$_ServerEmailAlreadyInUse _value,
      $Res Function(_$_ServerEmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as _$_ServerEmailAlreadyInUse));

  @override
  _$_ServerEmailAlreadyInUse get _value =>
      super._value as _$_ServerEmailAlreadyInUse;
}

/// @nodoc

class _$_ServerEmailAlreadyInUse implements _ServerEmailAlreadyInUse {
  const _$_ServerEmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.serverEmailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerEmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverUnknownError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() serverUserNotFound,
    required TResult Function() serverInvalidEmail,
    required TResult Function() serverEmailNotVerified,
    required TResult Function() serverEmailAlreadyInUse,
    required TResult Function() serverWrongEmailAndPasswordCombination,
  }) {
    return serverEmailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
  }) {
    return serverEmailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverEmailAlreadyInUse != null) {
      return serverEmailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerUnknownError value) serverUnknownError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerUserNotFound value) serverUserNotFound,
    required TResult Function(_ServerInvalidEmail value) serverInvalidEmail,
    required TResult Function(_ServerEmailNotVerified value)
        serverEmailNotVerified,
    required TResult Function(_ServerEmailAlreadyInUse value)
        serverEmailAlreadyInUse,
    required TResult Function(_ServerWrongEmailAndPasswordCombination value)
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverEmailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverEmailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverEmailAlreadyInUse != null) {
      return serverEmailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _ServerEmailAlreadyInUse implements AuthFailure {
  const factory _ServerEmailAlreadyInUse() = _$_ServerEmailAlreadyInUse;
}

/// @nodoc
abstract class _$$_ServerWrongEmailAndPasswordCombinationCopyWith<$Res> {
  factory _$$_ServerWrongEmailAndPasswordCombinationCopyWith(
          _$_ServerWrongEmailAndPasswordCombination value,
          $Res Function(_$_ServerWrongEmailAndPasswordCombination) then) =
      __$$_ServerWrongEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerWrongEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerWrongEmailAndPasswordCombinationCopyWith<$Res> {
  __$$_ServerWrongEmailAndPasswordCombinationCopyWithImpl(
      _$_ServerWrongEmailAndPasswordCombination _value,
      $Res Function(_$_ServerWrongEmailAndPasswordCombination) _then)
      : super(_value,
            (v) => _then(v as _$_ServerWrongEmailAndPasswordCombination));

  @override
  _$_ServerWrongEmailAndPasswordCombination get _value =>
      super._value as _$_ServerWrongEmailAndPasswordCombination;
}

/// @nodoc

class _$_ServerWrongEmailAndPasswordCombination
    implements _ServerWrongEmailAndPasswordCombination {
  const _$_ServerWrongEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.serverWrongEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerWrongEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverUnknownError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() serverUserNotFound,
    required TResult Function() serverInvalidEmail,
    required TResult Function() serverEmailNotVerified,
    required TResult Function() serverEmailAlreadyInUse,
    required TResult Function() serverWrongEmailAndPasswordCombination,
  }) {
    return serverWrongEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
  }) {
    return serverWrongEmailAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverUnknownError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? serverUserNotFound,
    TResult Function()? serverInvalidEmail,
    TResult Function()? serverEmailNotVerified,
    TResult Function()? serverEmailAlreadyInUse,
    TResult Function()? serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverWrongEmailAndPasswordCombination != null) {
      return serverWrongEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerUnknownError value) serverUnknownError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerUserNotFound value) serverUserNotFound,
    required TResult Function(_ServerInvalidEmail value) serverInvalidEmail,
    required TResult Function(_ServerEmailNotVerified value)
        serverEmailNotVerified,
    required TResult Function(_ServerEmailAlreadyInUse value)
        serverEmailAlreadyInUse,
    required TResult Function(_ServerWrongEmailAndPasswordCombination value)
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverWrongEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
  }) {
    return serverWrongEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerUnknownError value)? serverUnknownError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerUserNotFound value)? serverUserNotFound,
    TResult Function(_ServerInvalidEmail value)? serverInvalidEmail,
    TResult Function(_ServerEmailNotVerified value)? serverEmailNotVerified,
    TResult Function(_ServerEmailAlreadyInUse value)? serverEmailAlreadyInUse,
    TResult Function(_ServerWrongEmailAndPasswordCombination value)?
        serverWrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverWrongEmailAndPasswordCombination != null) {
      return serverWrongEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class _ServerWrongEmailAndPasswordCombination implements AuthFailure {
  const factory _ServerWrongEmailAndPasswordCombination() =
      _$_ServerWrongEmailAndPasswordCombination;
}
