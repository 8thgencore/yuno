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
    @Default(ProfileEditStatus.initial) ProfileEditStatus status,
    required String firstName,
    required String lastName,
    required String username,
    required String email,
    String? role,
    ProfileEditEmailError? emailError,
    ProfileEditUsernameError? usernameError,
    String? serverError,
  }) = _ProfileEditState;
}
