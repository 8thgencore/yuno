import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:equatable/equatable.dart';
import 'package:yuno/api/auth/models/i_auth_login.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/domain/repository/auth_repository.dart';
import 'package:yuno/ui/auth/login/model/errors.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.authRepository) : super(const LoginFieldsInfo()) {
    on<LoginEmailChanged>(_onEmailChanged);
    on<LoginEmailFocusLost>(_onEmailFocusLost);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginPasswordFocusLost>(_onPasswordFocusLost);
    on<LoginAuthAccount>(_onLoginAccount);
    on<LoginCloseError>(_onCloseError);
  }

  final AuthRepository authRepository;

  static final _passwordRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

  String _email = '';
  bool _highlightEmailError = false;
  LoginEmailError? _emailError = LoginEmailError.empty;

  String _password = '';
  bool _highlightPasswordError = false;
  LoginPasswordError? _passwordError = LoginPasswordError.empty;

  FutureOr<void> _onEmailChanged(
    final LoginEmailChanged event,
    final Emitter<LoginState> emit,
  ) {
    _email = event.email;
    _emailError = _validateEmail();
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onEmailFocusLost(
    final LoginEmailFocusLost event,
    final Emitter<LoginState> emit,
  ) {
    _highlightEmailError = true;
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onPasswordChanged(
    final LoginPasswordChanged event,
    final Emitter<LoginState> emit,
  ) {
    _password = event.password;
    _passwordError = _validatePassword();
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onPasswordFocusLost(
    final LoginPasswordFocusLost event,
    final Emitter<LoginState> emit,
  ) {
    _highlightPasswordError = true;
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onLoginAccount(
    final LoginAuthAccount event,
    final Emitter<LoginState> emit,
  ) async {
    emit(const LoginInProgress());
    _highlightEmailError = true;
    _highlightPasswordError = true;
    emit(_calculateFieldsInfo());
    final haveError = _emailError != null || _passwordError != null;
    if (haveError) {
      return;
    }
    emit(const LoginInProgress());
    final result = await authRepository.login(
          body: IAuthLogin(
            email: _email,
            password: _password,
          ),
        );
    if (result != null) {
      emit(LoginError(result.toString()));
    } else {
      emit(const LoginCompleted());
    }
  }

  FutureOr<void> _onCloseError(
    final LoginCloseError event,
    final Emitter<LoginState> emit,
  ) {
    emit(_calculateFieldsInfo());
  }

  LoginFieldsInfo _calculateFieldsInfo() {
    return LoginFieldsInfo(
      emailError: _highlightEmailError ? _emailError : null,
      passwordError: _highlightPasswordError ? _passwordError : null,
    );
  }

  LoginEmailError? _validateEmail() {
    if (_email.isEmpty) {
      return LoginEmailError.empty;
    }
    if (!EmailValidator.validate(_email)) {
      return LoginEmailError.invalid;
    }
    return null;
  }

  LoginPasswordError? _validatePassword() {
    if (_password.isEmpty) {
      return LoginPasswordError.empty;
    }
    if (_password.length < 6) {
      return LoginPasswordError.tooShort;
    }
    if (_passwordRegexp.hasMatch(_password)) {
      return LoginPasswordError.wrongSymbols;
    }
    return null;
  }
}
