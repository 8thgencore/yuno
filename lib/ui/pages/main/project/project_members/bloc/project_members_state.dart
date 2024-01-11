part of 'project_members_bloc.dart';

@freezed
class ProjectMembersState with _$ProjectMembersState {
  const ProjectMembersState._();

  const factory ProjectMembersState.initial({
    required List<IUserRead> projects,
    Object? error,
  }) = _InitialState;

  const factory ProjectMembersState.loading({
    required List<IUserRead> projects,
    Object? error,
  }) = _LoadingState;

  const factory ProjectMembersState.loaded({
    required List<IUserRead> projects,
    Object? error,
  }) = _LoadedState;

  const factory ProjectMembersState.failure({
    required List<IUserRead> projects,
    Object? error,
  }) = _FailureState;
}
