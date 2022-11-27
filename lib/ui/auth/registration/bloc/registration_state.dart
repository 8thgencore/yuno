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
  });

  final RegistrationEmailError? emailError;
  final RegistrationPasswordError? passwordError;
  final RegistrationPasswordConfirmError? passwordConfirmError;
  final RegistrationNameError? nameError;

  @override
  List<Object?> get props => [
        emailError,
        passwordError,
        passwordConfirmError,
        nameError,
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

class RegistrationError extends RegistrationState {
  const RegistrationError(this.requestError);

  final RequestError requestError;

  @override
  List<Object?> get props => [requestError];
}
