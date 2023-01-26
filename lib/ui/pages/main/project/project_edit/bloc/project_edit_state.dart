part of 'project_edit_bloc.dart';

enum ProjectEditStatus {
  initial,
  loading,
  loaded,
  failure,
  changeFields,
  successUpdated,
  successCreated,
}

@freezed
class ProjectEditState with _$ProjectEditState {
  const factory ProjectEditState({
    @Default(ProjectEditStatus.initial) ProjectEditStatus status,
    required String id,
    required String name,
    required String description,
    String? serverError,
  }) = _ProjectEditState;
}
