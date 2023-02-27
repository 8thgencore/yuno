part of 'registration_bloc.dart';

abstract class RegistrationState extends Equatable {
  const RegistrationState();
}

class RegistrationFieldsInfo extends RegistrationState {
  const RegistrationFieldsInfo({
    this.emailError,
    this.passwordError,
    this.passwordConfirmError,
    this.nameError,
    this.serverError,
  });

  final EmailError? emailError;
  final PasswordError? passwordError;
  final PasswordConfirmError? passwordConfirmError;
  final NameError? nameError;
  final String? serverError;

  @override
  List<Object?> get props => [
        emailError,
        passwordError,
        passwordConfirmError,
        nameError,
        serverError,
      ];
}

class RegistrationInProgress extends RegistrationState {
  const RegistrationInProgress();

  @override
  List<Object?> get props => [];
}

class RegistrationCompleted extends RegistrationState {
  const RegistrationCompleted();

  @override
  List<Object?> get props => [];
}
