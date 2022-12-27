part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginEmailChanged extends LoginEvent {
  const LoginEmailChanged(this.email);

  final String email;

  @override
  List<Object?> get props => [email];
}

class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged(this.password);

  final String password;

  @override
  List<Object?> get props => [password];
}

class LoginEmailFocusLost extends LoginEvent {
  const LoginEmailFocusLost();

  @override
  List<Object?> get props => [];
}

class LoginPasswordFocusLost extends LoginEvent {
  const LoginPasswordFocusLost();

  @override
  List<Object?> get props => [];
}

class LoginAuthAccount extends LoginEvent {
  const LoginAuthAccount();

  @override
  List<Object?> get props => [];
}

class LoginCloseError extends LoginEvent {
  const LoginCloseError();

  @override
  List<Object?> get props => [];
}
