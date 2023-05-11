import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';

part 'project_edit_bloc.freezed.dart';

part 'project_edit_event.dart';

part 'project_edit_state.dart';

class ProjectEditBloc extends Bloc<ProjectEditEvent, ProjectEditState> {
  ProjectEditBloc({
    required this.projectRepository,
  }) : super(
          const ProjectEditState(
            id: '',
            name: '',
            description: '',
          ),
        ) {
    on<ProjectEditEvent>(
      (event, emit) => event.map(
        started: (event) async => _onProjectLoaded(event, emit),
        nameChanged: (event) async => _onNameChanged(event, emit),
        descriptionChanged: (event) async => _onDescriptionChanged(event, emit),
        saved: (event) async => _onProjectSaved(event, emit),
        updated: (event) async => _onProjectUpdated(event, emit),
      ),
    );
  }

  final IProjectRepository projectRepository;

  FutureOr<void> _onProjectLoaded(
    _StartedEvent event,
    Emitter<ProjectEditState> emit,
  ) async {
    emit(state.copyWith(status: ProjectEditStatus.loading));
    try {
      if (event.id.length < 16) {
        emit(state.copyWith(status: ProjectEditStatus.loaded));
      } else {
        final project = await projectRepository.getById(id: event.id);
        emit(
          state.copyWith(
            status: ProjectEditStatus.loaded,
            id: project.id,
            name: project.name,
            description: project.description,
          ),
        );
      }
      emit(state.copyWith(status: ProjectEditStatus.fillingFields));
    } on DioError catch (dioError) {
      emit(
        state.copyWith(
          status: ProjectEditStatus.failure,
          serverError: dioErrorInterceptor(dioError).toString(),
        ),
      );
    }
  }

  FutureOr<void> _onNameChanged(
    _NameChangedEvent event,
    Emitter<ProjectEditState> emit,
  ) async {
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
    try {
      final result = await projectRepository.create(
        name: state.name,
        description: state.description,
      );
      emit(
        state.copyWith(
          id: result.id,
          status: ProjectEditStatus.successCreated,
        ),
      );
    } on DioError catch (dioError) {
      emit(
        state.copyWith(
          status: ProjectEditStatus.failure,
          serverError: dioErrorInterceptor(dioError).toString(),
        ),
      );
    }
  }

  FutureOr<void> _onProjectUpdated(
    _UpdatedEvent event,
    Emitter<ProjectEditState> emit,
  ) async {
    emit(state.copyWith(status: ProjectEditStatus.loading));
    try {
      await projectRepository.updateById(
        id: state.id,
        name: state.name,
        description: state.description,
      );
      emit(state.copyWith(status: ProjectEditStatus.successUpdated));
    } on DioError catch (dioError) {
      emit(
        state.copyWith(
          status: ProjectEditStatus.failure,
          serverError: dioErrorInterceptor(dioError).toString(),
        ),
      );
    }
  }
}
