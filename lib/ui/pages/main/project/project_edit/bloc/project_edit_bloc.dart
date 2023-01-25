import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models/i_project_read.dart';
import 'package:yuno/api/project/models/i_project_with_users_tasks.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';

part 'project_edit_bloc.freezed.dart';
part 'project_edit_event.dart';
part 'project_edit_state.dart';

class ProjectEditBloc extends Bloc<ProjectEditEvent, ProjectEditState> {
  ProjectEditBloc({
    required this.apiProjectRepository,
  }) : super(
          const ProjectEditState(
            status: ProjectEditStatus.initial,
            id: '',
            name: '',
            description: '',
          ),
        ) {
    on<ProjectEditEvent>(
      (event, emit) => event.map(
        started: (event) => _onProjectLoaded(event, emit),
        nameChanged: (event) => _onNameChanged(event, emit),
        descriptionChanged: (event) => _onDescriptionChanged(event, emit),
        saved: (event) => _onProjectSaved(event, emit),
        updated: (event) => _onProjectUpdated(event, emit),
      ),
    );
  }

  final ApiProjectRepository apiProjectRepository;

  FutureOr<void> _onProjectLoaded(
    _StartedEvent event,
    Emitter<ProjectEditState> emit,
  ) async {
    emit(state.copyWith(status: ProjectEditStatus.loading));
    try {
      if (event.id.length < 16) {
        emit(state.copyWith(status: ProjectEditStatus.loaded));
      } else {
        final project = await apiProjectRepository.getById(id: event.id);
        if (project is IProjectWithUsersTasks) {
          emit(state.copyWith(
            status: ProjectEditStatus.loaded,
            id: project.id,
            name: project.name,
            description: project.description,
          ));
        } else {
          emit(state.copyWith(status: ProjectEditStatus.failure));
        }
      }
    } on Exception catch (_) {
      emit(state.copyWith(
        status: ProjectEditStatus.failure,
        serverError: "Don't get project",
      ));
    }
  }

  FutureOr<void> _onNameChanged(
    _NameChangedEvent event,
    Emitter<ProjectEditState> emit,
  ) async {
    emit(state.copyWith(
      status: ProjectEditStatus.failure,
      name: event.text,
    ));
    emit(state.copyWith(name: event.text));
  }

  FutureOr<void> _onDescriptionChanged(
    _DescriptionChangedEvent event,
    Emitter<ProjectEditState> emit,
  ) async {
    emit(state.copyWith(description: event.text));
  }

  FutureOr<void> _onProjectSaved(
    _SavedEvent event,
    Emitter<ProjectEditState> emit,
  ) async {
    emit(state.copyWith(status: ProjectEditStatus.loading));
    final result = await apiProjectRepository.create(
      name: state.name,
      description: state.description,
    );
    if (result is IProjectRead) {
      emit(state.copyWith(status: ProjectEditStatus.successCreated));
    } else {
      emit(state.copyWith(
        status: ProjectEditStatus.failure,
        serverError: result.toString(),
      ));
    }
  }

  FutureOr<void> _onProjectUpdated(
    _UpdatedEvent event,
    Emitter<ProjectEditState> emit,
  ) async {
    emit(state.copyWith(status: ProjectEditStatus.loading));
    final result = await apiProjectRepository.updateById(
      id: state.id,
      name: state.name,
      description: state.description,
    );
    if (result is IProjectRead) {
      emit(state.copyWith(status: ProjectEditStatus.successUpdated));
    } else {
      emit(state.copyWith(
        status: ProjectEditStatus.failure,
        serverError: result.toString(),
      ));
    }
  }
}
