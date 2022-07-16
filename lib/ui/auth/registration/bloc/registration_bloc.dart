import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:equatable/equatable.dart';
import 'package:yuno/ui/auth/registration/model/models.dart';

part 'registration_event.dart';

part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  static final _passwordRegexp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

  RegistrationBloc() : super(RegistrationState.initial()) {
    on<RegistrationButtonClicked>(_registrationButtonClicked);
    on<RegistrationEmailChanged>(_emailChanged);
    on<RegistrationNicknameChanged>(_nicknameChanged);
    on<RegistrationPasswordChanged>(_passwordChanged);
    on<RegistrationPasswordConfirmChanged>(_passwordConfirmChanged);
    on<RegistrationRequestErrorShowed>(_requestErrorShowed);
  }

  FutureOr<void> _registrationButtonClicked(
    RegistrationButtonClicked event,
    Emitter<RegistrationState> emit,
  ) async {
    if (state.allFieldsValid) {
      final response = await _registration(
        email: state.email,
        nickname: state.nickname,
        password: state.password,
        passwordConfirm: state.passwordConfirm,
      );
      print("response: $response");
      if (response == null) {
        emit(state.copyWith(registered: true));
      } else {
        switch (response) {
          case RegistrationError.emailExist:
            emit(state.copyWith(emailError: EmailError.exist));
            break;
          case RegistrationError.nicknameExist:
            emit(state.copyWith(nicknameError: NicknameError.exist));
            break;
          case RegistrationError.notConfirmPassword:
            emit(state.copyWith(passwordError: PasswordError.notConfirm));
            break;
          case RegistrationError.wrongPassword:
            emit(state.copyWith(passwordError: PasswordError.wrongPassword));
            break;
          case RegistrationError.other:
            emit(state.copyWith(requestError: RequestError.unknown));
            break;
        }
      }
    }
  }

  Future<RegistrationError?> _registration({
    required final String email,
    required final String nickname,
    required final String password,
    required final String passwordConfirm,
  }) async {
    final successfulResponse = Random().nextBool();
    if (successfulResponse) {
      return null;
    }
    return RegistrationError
        .values[Random().nextInt(RegistrationError.values.length)];
  }

  FutureOr<void> _emailChanged(
    RegistrationEmailChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final newEmail = event.email;
    emit(
      state.copyWith(
        email: newEmail,
        emailValid: EmailValidator.validate(newEmail),
        emailError: EmailError.noError,
      ),
    );
  }

  FutureOr<void> _nicknameChanged(
    RegistrationNicknameChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final newNickname = event.nickname;
    emit(
      state.copyWith(
        nickname: newNickname,
        nicknameValid: newNickname.length >= 3,
        nicknameError: NicknameError.noError,
      ),
    );
  }

  FutureOr<void> _passwordChanged(
    RegistrationPasswordChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final newPassword = event.password;
    emit(
      state.copyWith(
        password: newPassword,
        passwordValid: _passwordRegexp.hasMatch(newPassword),
        passwordError: PasswordError.noError,
        passwordConfirmed: newPassword == state.passwordConfirm,
      ),
    );
  }

  FutureOr<void> _passwordConfirmChanged(
    RegistrationPasswordConfirmChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final newPasswordConfirm = event.password;
    emit(
      state.copyWith(
        passwordConfirm: newPasswordConfirm,
        passwordValid: _passwordRegexp.hasMatch(newPasswordConfirm),
        passwordError: PasswordError.noError,
        passwordConfirmed: newPasswordConfirm == state.password,
      ),
    );
  }

  FutureOr<void> _requestErrorShowed(
    RegistrationRequestErrorShowed event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(requestError: RequestError.noError));
  }
}

enum RegistrationError {
  emailExist,
  nicknameExist,
  wrongPassword,
  notConfirmPassword,
  other,
}
