part of 'home_header_bloc.dart';

@freezed
class HomeHeaderState with _$HomeHeaderState {
  const HomeHeaderState._();

  const factory HomeHeaderState.initial({
    required String username,
    required int taskLength,
    ITaskWithProjectName? task,
    Object? error,
  }) = _InitialState;

  const factory HomeHeaderState.loading({
    required String username,
    required int taskLength,
    ITaskWithProjectName? task,
    Object? error,
  }) = _LoadingState;

  const factory HomeHeaderState.loaded({
    required String username,
    required int taskLength,
    ITaskWithProjectName? task,
    Object? error,
  }) = _LoadedState;

  const factory HomeHeaderState.failure({
    required String username,
    required int taskLength,
    ITaskWithProjectName? task,
    Object? error,
  }) = _FailureState;
}
