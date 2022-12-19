part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginFieldsInfo extends LoginState {
  const LoginFieldsInfo({
    this.emailError,
    this.passwordError,
  });

  final LoginEmailError? emailError;
  final LoginPasswordError? passwordError;

  @override
  List<Object?> get props => [emailError, passwordError];
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

class LoginError extends LoginState {
  const LoginError(this.requestError);

  final String requestError;

  @override
  List<Object?> get props => [requestError];
}
