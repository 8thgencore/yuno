import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:equatable/equatable.dart';
import 'package:yuno/data/model/request_error.dart';
import 'package:yuno/ui/auth/registration/model/errors.dart';

part 'registration_event.dart';

part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(const RegistrationFieldsInfo()) {
    on<RegistrationEmailChanged>(_onEmailChanged);
    on<RegistrationEmailFocusLost>(_onEmailFocusLost);
    on<RegistrationPasswordChanged>(_onPasswordChanged);
    on<RegistrationPasswordFocusLost>(_onPasswordFocusLost);
    on<RegistrationPasswordConfirmationChanged>(_onPasswordConfirmationChanged);
    on<RegistrationPasswordConfirmationFocusLost>(_onPasswordConfirmationFocusLost);
    on<RegistrationNameChanged>(_onNameChanged);
    on<RegistrationNameFocusLost>(_onNameFocusLost);
    on<RegistrationCreateAccount>(_onCreateAccount);
    on<RegistrationCloseError>(_onCloseError);
  }

  static final _passwordRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

  String _email = '';
  bool _highlightEmailError = false;
  RegistrationEmailError? _emailError = RegistrationEmailError.empty;

  String _password = '';
  bool _highlightPasswordError = false;
  RegistrationPasswordError? _passwordError = RegistrationPasswordError.empty;

  String _passwordConfirmation = '';
  bool _highlightPasswordConfirmationError = false;
  RegistrationPasswordConfirmError? _passwordConfirmationError =
      RegistrationPasswordConfirmError.empty;

  String _name = '';
  bool _highlightNameError = false;
  RegistrationNameError? _nameError = RegistrationNameError.empty;

  FutureOr<void> _onEmailChanged(
    final RegistrationEmailChanged event,
    final Emitter<RegistrationState> emit,
  ) {
    _email = event.email;
    _emailError = _validateEmail();
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onEmailFocusLost(
    final RegistrationEmailFocusLost event,
    final Emitter<RegistrationState> emit,
  ) {
    _highlightEmailError = true;
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onPasswordChanged(
    final RegistrationPasswordChanged event,
    final Emitter<RegistrationState> emit,
  ) {
    _password = event.password;
    _passwordError = _validatePassword();
    _passwordConfirmationError = _validatePasswordConfirmation();
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onPasswordFocusLost(
    final RegistrationPasswordFocusLost event,
    final Emitter<RegistrationState> emit,
  ) {
    _highlightPasswordError = true;
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onPasswordConfirmationChanged(
    final RegistrationPasswordConfirmationChanged event,
    final Emitter<RegistrationState> emit,
  ) {
    _passwordConfirmation = event.passwordConfirmation;
    _passwordConfirmationError = _validatePasswordConfirmation();
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onPasswordConfirmationFocusLost(
    final RegistrationPasswordConfirmationFocusLost event,
    final Emitter<RegistrationState> emit,
  ) {
    _highlightPasswordConfirmationError = true;
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onNameChanged(
    final RegistrationNameChanged event,
    final Emitter<RegistrationState> emit,
  ) {
    _name = event.name;
    _nameError = _validateName();
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onNameFocusLost(
    final RegistrationNameFocusLost event,
    final Emitter<RegistrationState> emit,
  ) {
    _highlightNameError = true;
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onCreateAccount(
    final RegistrationCreateAccount event,
    final Emitter<RegistrationState> emit,
  ) async {
    _highlightEmailError = true;
    _highlightPasswordError = true;
    _highlightPasswordConfirmationError = true;
    _highlightNameError = true;
    emit(_calculateFieldsInfo());
    final haveError = _emailError != null ||
        _passwordError != null ||
        _passwordConfirmationError != null ||
        _nameError != null;
    emit(const RegistrationError(RequestError.invalid));
    if (haveError) {
      return;
    }
    emit(const RegistrationInProgress());
    await Future<void>.delayed(const Duration(seconds: 2));
    emit(const RegistrationCompleted());
    // final response = await _register();
    // if (response.isRight) {
    //   final userWithTokens = response.right;
    //   await userRepository.setItem(userWithTokens.user);
    //   await tokenRepository.setItem(userWithTokens.token);
    //   await refreshTokenRepository.setItem(userWithTokens.refreshToken);
    //   emit(const RegistrationCompleted());
    // } else {
    //   //TODO hangle error
    // }
  }

  // Future<Either<ApiError, UserWithTokensDto>> _register() async {
  //   final response = await unauthorizedApiService.register(
  //     email: _email,
  //     password: _password,
  //     name: _name,
  //     avatarUrl: _avatarBuilder(_avatarKey),
  //   );
  //   //TODO errors
  //   return response;
  // }

  FutureOr<void> _onCloseError(
    final RegistrationCloseError event,
    final Emitter<RegistrationState> emit,
  ) {
    emit(_calculateFieldsInfo());
  }

  RegistrationFieldsInfo _calculateFieldsInfo() {
    return RegistrationFieldsInfo(
      emailError: _highlightEmailError ? _emailError : null,
      passwordError: _highlightPasswordError ? _passwordError : null,
      passwordConfirmError: _highlightPasswordConfirmationError ? _passwordConfirmationError : null,
      nameError: _highlightNameError ? _nameError : null,
    );
  }

  RegistrationEmailError? _validateEmail() {
    if (_email.isEmpty) {
      return RegistrationEmailError.empty;
    }
    if (!EmailValidator.validate(_email)) {
      return RegistrationEmailError.invalid;
    }
    return null;
  }

  RegistrationPasswordError? _validatePassword() {
    if (_password.isEmpty) {
      return RegistrationPasswordError.empty;
    }
    if (_password.length < 6) {
      return RegistrationPasswordError.tooShort;
    }
    if (_passwordRegexp.hasMatch(_password)) {
      return RegistrationPasswordError.wrongSymbols;
    }
    return null;
  }

  RegistrationPasswordConfirmError? _validatePasswordConfirmation() {
    if (_passwordConfirmation.isEmpty) {
      return RegistrationPasswordConfirmError.empty;
    }
    if (_password != _passwordConfirmation) {
      return RegistrationPasswordConfirmError.different;
    }
    return null;
  }

  RegistrationNameError? _validateName() {
    if (_name.isEmpty) {
      return RegistrationNameError.empty;
    }
    return null;
  }
}
