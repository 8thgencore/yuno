import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models/i_project_read.dart';
import 'package:yuno/api/project/models/i_project_with_users_tasks.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';

part 'project_bloc.freezed.dart';

part 'project_event.dart';

part 'project_state.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc({
    required this.apiProjectRepository,
  }) : super(
          const ProjectState(
            status: ProjectStatus.initial,
            id: '',
            name: '',
            description: '',
          ),
        ) {
    on<ProjectEvent>(
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
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(status: ProjectStatus.loading));
    try {
      if (event.id.length < 16) {
        emit(state.copyWith(status: ProjectStatus.loaded));
      } else {
        final project = await apiProjectRepository.getProjectById(id: event.id);
        if (project is IProjectWithUsersTasks) {
          emit(state.copyWith(
            status: ProjectStatus.loaded,
            id: project.id,
            name: project.name,
            description: project.description,
          ));
        } else {
          emit(state.copyWith(status: ProjectStatus.failure));
        }
      }
    } on Exception catch (_) {
      emit(state.copyWith(
        status: ProjectStatus.failure,
        serverError: "Don't get project",
      ));
    }
  }

  FutureOr<void> _onNameChanged(
    _NameChangedEvent event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(
      status: ProjectStatus.failure,
      name: event.text,
    ));
    emit(state.copyWith(name: event.text));
  }

  FutureOr<void> _onDescriptionChanged(
    _DescriptionChangedEvent event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(description: event.text));
  }

  FutureOr<void> _onProjectSaved(
    _SavedEvent event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(status: ProjectStatus.loading));
    final result = await apiProjectRepository.createProject(
      name: state.name,
      description: state.description,
    );
    if (result is IProjectRead) {
      emit(state.copyWith(status: ProjectStatus.successCreated));
    } else {
      emit(state.copyWith(
        status: ProjectStatus.failure,
        serverError: result.toString(),
      ));
    }
  }

  FutureOr<void> _onProjectUpdated(
    _UpdatedEvent event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(status: ProjectStatus.loading));
    final result = await apiProjectRepository.updateTaskById(
      id: state.id,
      name: state.name,
      description: state.description,
    );
    if (result is IProjectRead) {
      emit(state.copyWith(status: ProjectStatus.successUpdated));
    } else {
      emit(state.copyWith(
        status: ProjectStatus.failure,
        serverError: result.toString(),
      ));
    }
  }
}
