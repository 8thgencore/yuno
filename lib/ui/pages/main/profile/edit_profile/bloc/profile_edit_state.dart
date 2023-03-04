// ignore_for_file: use_late_for_private_fields_and_variables

part of 'profile_edit_bloc.dart';

enum ProfileEditStatus {
  initial,
  loading,
  loaded,
  failure,
  success,
}

@freezed
class ProfileEditState with _$ProfileEditState {
  const factory ProfileEditState({
    required String firstName,
    required String lastName,
    required String username,
    required String email,
    @Default(ProfileEditStatus.initial) ProfileEditStatus status,
    String? role,
    ProfileEditEmailError? emailError,
    ProfileEditUsernameError? usernameError,
    String? serverError,
  }) = _ProfileEditState;
}
