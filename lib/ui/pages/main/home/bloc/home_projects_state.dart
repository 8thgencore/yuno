part of 'home_projects_bloc.dart';

@freezed
class HomeProjectsState with _$HomeProjectsState {
  const HomeProjectsState._();

  const factory HomeProjectsState.initial() = _InitialState;

  const factory HomeProjectsState.loading() = _LoadingState;

  const factory HomeProjectsState.loaded(List<IProjectWithUsers> projects) = _LoadedState;

  const factory HomeProjectsState.failure(Object error) = _FailureState;
}
