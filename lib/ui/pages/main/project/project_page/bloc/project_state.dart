part of 'project_bloc.dart';

enum ProjectStatus {
  initial,
  loading,
  loaded,
  failure,
  successUpdated,
  successCreated,
}

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState({
    @Default(ProjectStatus.initial) ProjectStatus status,
    required String id,
    required String name,
    required String description,
    String? serverError,
  }) = _ProjectState;
}
