part of 'home_header_bloc.dart';

@freezed
class HomeHeaderState with _$HomeHeaderState {
  const HomeHeaderState._();

  const factory HomeHeaderState.initial() = _InitialState;

  const factory HomeHeaderState.loading() = _LoadingState;

  const factory HomeHeaderState.loaded({
    required String username,
    required int taskLength,
    ITaskWithProjectName? task,
  }) = _LoadedState;

  const factory HomeHeaderState.failure(Object error) = _FailureState;
}
