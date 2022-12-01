part of 'registration_bloc.dart';

abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();
}

class RegistrationEmailChanged extends RegistrationEvent {
  const RegistrationEmailChanged(this.email);

  final String email;

  @override
  List<Object?> get props => [email];
}

class RegistrationPasswordChanged extends RegistrationEvent {
  const RegistrationPasswordChanged(this.password);

  final String password;

  @override
  List<Object?> get props => [password];
}

class RegistrationPasswordConfirmationChanged extends RegistrationEvent {
  const RegistrationPasswordConfirmationChanged(this.passwordConfirmation);

  final String passwordConfirmation;

  @override
  List<Object?> get props => [passwordConfirmation];
}

class RegistrationNameChanged extends RegistrationEvent {
  const RegistrationNameChanged(this.name);

  final String name;

  @override
  List<Object?> get props => [name];
}

class RegistrationEmailFocusLost extends RegistrationEvent {
  const RegistrationEmailFocusLost();

  @override
  List<Object?> get props => [];
}

class RegistrationPasswordFocusLost extends RegistrationEvent {
  const RegistrationPasswordFocusLost();

  @override
  List<Object?> get props => [];
}

class RegistrationPasswordConfirmationFocusLost extends RegistrationEvent {
  const RegistrationPasswordConfirmationFocusLost();

  @override
  List<Object?> get props => [];
}

class RegistrationNameFocusLost extends RegistrationEvent {
  const RegistrationNameFocusLost();

  @override
  List<Object?> get props => [];
}

class RegistrationCreateAccount extends RegistrationEvent {
  const RegistrationCreateAccount();

  @override
  List<Object?> get props => [];
}

class RegistrationCloseError extends RegistrationEvent {
  const RegistrationCloseError();

  @override
  List<Object?> get props => [];
}
