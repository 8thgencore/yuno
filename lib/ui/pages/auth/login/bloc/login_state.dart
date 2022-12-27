part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginFieldsInfo extends LoginState {
  const LoginFieldsInfo({
    this.emailError,
    this.passwordError,
    this.serverError,
  });

  final LoginEmailError? emailError;
  final LoginPasswordError? passwordError;
  final String? serverError;

  @override
  List<Object?> get props => [emailError, passwordError, serverError];
}

class LoginInProgress extends LoginState {
  const LoginInProgress();

  @override
  List<Object?> get props => [];
}

class LoginCompleted extends LoginState {
  const LoginCompleted();

  @override
  List<Object?> get props => [];
}

