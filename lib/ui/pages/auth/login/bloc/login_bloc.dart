import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:equatable/equatable.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/ui/models/auth_errors.dart';

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

  final IAuthRepository authRepository;

  static final _passwordRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

  String _email = '';
  bool _highlightEmailError = false;
  EmailError? _emailError = EmailError.empty;

  String _password = '';
  bool _highlightPasswordError = false;
  PasswordError? _passwordError = PasswordError.empty;

  bool _highlightServerError = false;
  String? _serverError;

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
    try {
      _highlightEmailError = true;
      _highlightPasswordError = true;

      emit(_calculateFieldsInfo());
      final haveError = _emailError != null || _passwordError != null;
      if (haveError) {
        return;
      }

      emit(const LoginInProgress());

      final result = await authRepository.login(
        email: _email,
        password: _password,
      );
      if (result != null) {
        emit(const LoginCompleted());
      }
    } on DioError catch (dioError) {
      _serverError = dioErrorInterceptor(dioError).toString();
      _highlightServerError = true;
      emit(_calculateFieldsInfo());
    }
  }

  FutureOr<void> _onCloseError(
    final LoginCloseError event,
    final Emitter<LoginState> emit,
  ) {
    _highlightServerError = false;
    emit(_calculateFieldsInfo());
  }

  LoginFieldsInfo _calculateFieldsInfo() {
    return LoginFieldsInfo(
      emailError: _highlightEmailError ? _emailError : null,
      passwordError: _highlightPasswordError ? _passwordError : null,
      serverError: _highlightServerError ? _serverError : null,
    );
  }

  EmailError? _validateEmail() {
    if (_email.isEmpty) {
      return EmailError.empty;
    }
    if (!EmailValidator.validate(_email)) {
      return EmailError.invalid;
    }
    return null;
  }

  PasswordError? _validatePassword() {
    if (_password.isEmpty) {
      return PasswordError.empty;
    }
    if (_password.length < 6) {
      return PasswordError.tooShort;
    }
    if (_passwordRegexp.hasMatch(_password)) {
      return PasswordError.wrongSymbols;
    }
    return null;
  }
}
