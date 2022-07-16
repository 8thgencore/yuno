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

class RegistrationNicknameChanged extends RegistrationEvent {
  const RegistrationNicknameChanged(this.nickname);

  final String nickname;

  @override
  List<Object?> get props => [nickname];
}

class RegistrationPasswordChanged extends RegistrationEvent {
  const RegistrationPasswordChanged(this.password, this.passwordConfirm);

  final String password;
  final String passwordConfirm;

  @override
  List<Object?> get props => [password, passwordConfirm];
}

class RegistrationRegistrationButtonClicked extends RegistrationEvent {
  const RegistrationRegistrationButtonClicked();

  @override
  List<Object?> get props => [];
}

class RegistrationRequestErrorShowed extends RegistrationEvent {
  const RegistrationRequestErrorShowed();

  @override
  List<Object?> get props => [];
}
