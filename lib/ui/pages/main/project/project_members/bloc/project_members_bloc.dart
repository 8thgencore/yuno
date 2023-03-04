import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/user/models.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';

part 'project_members_event.dart';

part 'project_members_state.dart';

part 'project_members_bloc.freezed.dart';

class ProjectMembersBloc extends Bloc<ProjectMembersEvent, ProjectMembersState> {
  ProjectMembersBloc({
    required this.projectRepository,
  }) : super(const ProjectMembersState.initial()) {
    on<ProjectMembersEvent>(
      (event, emit) => event.map(
        started: (event) async => _onMembersLoaded(event, emit),
      ),
    );
  }

  final IProjectRepository projectRepository;

  FutureOr<void> _onMembersLoaded(
    _StartedEvent event,
    Emitter<ProjectMembersState> emit,
  ) async {
    emit(const ProjectMembersState.loading());
    try {
      final members = await projectRepository.getMembers(id: event.id);
      emit(ProjectMembersState.loaded(members.items));
    } on DioError catch (dioError) {
      emit(ProjectMembersState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }
}
