part of 'projects_list_bloc.dart';

@freezed
class ProjectsListState with _$ProjectsListState {
  const ProjectsListState._();

  const factory ProjectsListState.initial() = _InitialState;

  const factory ProjectsListState.loading() = _LoadingState;

  const factory ProjectsListState.loaded({
    required List<IProjectWithUsers> projects,
    required bool isShowLoading,
    required bool isShowError,
  }) = _LoadedState;

  const factory ProjectsListState.failure(Object error) = _FailureState;
}
