import 'package:equatable/equatable.dart';

enum ProfileEditEmailError { empty, invalid }

enum ProfileEditNicknameError { empty, tooShort }

class ProfileEditFieldsInfo extends Equatable {
  const ProfileEditFieldsInfo({
    this.emailError,
    this.nicknameError,
    this.serverError,
  });

  final ProfileEditEmailError? emailError;
  final ProfileEditNicknameError? nicknameError;
  final String? serverError;

  @override
  List<Object?> get props => [emailError, nicknameError, serverError];
}
