part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState.initial() = _InitialState;

  const factory ProfileState.loading() = _LoadingState;

  const factory ProfileState.loaded(IUserRead user, String? error) = _LoadedState;

  const factory ProfileState.logout() = _LogoutState;

  const factory ProfileState.failure(Object error) = _FailureState;
}
