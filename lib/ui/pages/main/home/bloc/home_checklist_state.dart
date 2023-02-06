part of 'home_checklist_bloc.dart';

@freezed
class HomeChecklistState with _$HomeChecklistState {

  const HomeChecklistState._();

  const factory HomeChecklistState.initial() = _InitialState;

  const factory HomeChecklistState.loading() = _LoadingState;

  const factory HomeChecklistState.keep() = _KeepState;

  const factory HomeChecklistState.loaded({
    required List<ITaskWithProjectName> tasks,
  }) = _LoadedState;

  const factory HomeChecklistState.failure(Object error) = _FailureState;
}
