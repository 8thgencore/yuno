// ignore_for_file: use_late_for_private_fields_and_variables

part of 'project_details_bloc.dart';

@freezed
class ProjectDetailsState with _$ProjectDetailsState {
  const ProjectDetailsState._();

  const factory ProjectDetailsState.initial() = _InitialState;

  const factory ProjectDetailsState.loading() = _LoadingState;

  const factory ProjectDetailsState.loaded({
    required IProjectWithUsersTasks project,
    required List<ITaskRead> tasks,
    required bool isMember,
    required bool isOwner,
  }) = _LoadedState;

  const factory ProjectDetailsState.failure(Object error) = _FailureState;

  const factory ProjectDetailsState.keep() = _KeepState;

  const factory ProjectDetailsState.deleted() = _DeletedState;
}
