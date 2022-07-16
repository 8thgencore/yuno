part of 'registration_bloc.dart';

class RegistrationState extends Equatable {
  final String email;
  final EmailError emailError;
  final bool emailValid;
  final String nickname;
  final NicknameError nicknameError;
  final bool nicknameValid;
  final String password;
  final PasswordError passwordError;
  final bool passwordValid;
  final String passwordConfirm;
  final bool passwordConfirmed;
  final bool registered;
  final RequestError? requestError;

  const RegistrationState({
    required this.email,
    required this.emailError,
    required this.emailValid,
    required this.nickname,
    required this.nicknameError,
    required this.nicknameValid,
    required this.password,
    required this.passwordError,
    required this.passwordValid,
    required this.passwordConfirm,
    required this.passwordConfirmed,
    required this.registered,
    required this.requestError,
  });

  bool get allFieldsValid => emailValid && passwordValid;

  factory RegistrationState.initial() => const RegistrationState(
        email: '',
        emailError: EmailError.noError,
        emailValid: false,
        nickname: '',
        nicknameError: NicknameError.noError,
        nicknameValid: false,
        password: '',
        passwordError: PasswordError.noError,
        passwordValid: false,
        passwordConfirm: '',
        passwordConfirmed: false,
        registered: false,
        requestError: RequestError.noError,
      );

  RegistrationState copyWith({
    final String? email,
    final EmailError? emailError,
    final bool? emailValid,
    final String? nickname,
    final NicknameError? nicknameError,
    final bool? nicknameValid,
    final String? password,
    final PasswordError? passwordError,
    final bool? passwordValid,
    final String? passwordConfirm,
    final bool? passwordConfirmed,
    final bool? registered,
    final RequestError? requestError,
  }) {
    return RegistrationState(
      email: email ?? this.email,
      emailError: emailError ?? this.emailError,
      emailValid: emailValid ?? this.emailValid,
      nickname: nickname ?? this.nickname,
      nicknameError: nicknameError ?? this.nicknameError,
      nicknameValid: nicknameValid ?? this.nicknameValid,
      password: password ?? this.password,
      passwordError: passwordError ?? this.passwordError,
      passwordValid: passwordValid ?? this.passwordValid,
      passwordConfirm: passwordConfirm ?? this.passwordConfirm,
      passwordConfirmed: passwordConfirmed ?? this.passwordConfirmed,
      registered: registered ?? this.registered,
      requestError: requestError ?? this.requestError,
    );
  }

  @override
  List<Object?> get props => [
        email,
        emailError,
        emailValid,
        email,
        emailError,
        emailValid,
        password,
        passwordError,
        passwordValid,
        passwordConfirm,
        passwordConfirmed,
        registered,
        requestError,
      ];
}
