part of 'project_edit_bloc.dart';

enum ProjectEditStatus {
  initial,
  loading,
  loaded,
  failure,
  fillingFields,
  successUpdated,
  successCreated,
}

@freezed
class ProjectEditState with _$ProjectEditState {
  const factory ProjectEditState({
    required String id,
    required String name,
    required String description,
    @Default(ProjectEditStatus.initial) ProjectEditStatus status,
    String? serverError,
  }) = _ProjectEditState;
}
