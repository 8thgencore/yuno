part of 'project_members_bloc.dart';

@freezed
class ProjectMembersState with _$ProjectMembersState {
  const ProjectMembersState._();

  const factory ProjectMembersState.initial() = _InitialState;

  const factory ProjectMembersState.loading() = _LoadingState;

  const factory ProjectMembersState.loaded(List<IUserRead> projects) = _LoadedState;

  const factory ProjectMembersState.failure(Object error) = _FailureState;
}
