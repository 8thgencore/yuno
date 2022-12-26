part of 'profile_edit_bloc.dart';

@freezed
class ProfileEditState with _$ProfileEditState {
  const factory ProfileEditState.initial() = _InitialState;

  const factory ProfileEditState.fieldsInfo({
    required ProfileEditEmailError? emailError,
    required ProfileEditNicknameError? nicknameError,
    required String? serverError,
  }) = _FieldsInfoState;

  const factory ProfileEditState.loading() = _LoadingState;

  const factory ProfileEditState.loaded(IUserRead user) = _LoadedState;

  const factory ProfileEditState.failure(Object error) = _FailureState;
}
