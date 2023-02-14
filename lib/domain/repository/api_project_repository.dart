import 'package:yuno/api/project/models.dart';
import 'package:yuno/api/project/rest_client.dart';

abstract class IProjectRepository {
  Future<PaginatedDataIProjectWithUsers> getMyProjects({
    required int page,
    required int size,
  });

  Future<PaginatedDataIProjectWithUsers> getProjects({
    required int page,
    required int size,
  });

  Future<IProjectWithUsersTasks> getById({required String id});

  Future<IProjectRead> create({
    required String name,
    required String description,
  });

  Future<IProjectRead> updateById({
    required String id,
    required String name,
    required String description,
  });

  Future<IProjectRead> deleteById({required String id});

  Future<IProjectWithUsers> joinProject({required String id});

  Future<IProjectWithUsers> leaveProject({required String id});
}

class ApiProjectRepository implements IProjectRepository {
  ApiProjectRepository({
    required this.projectClient,
  });

  final ProjectClient projectClient;

  Future<PaginatedDataIProjectWithUsers> getMyProjects({
    required int page,
    required int size,
  }) async {
    final response = await projectClient.getProjectMy(page: page, size: size);
    return response.data;
  }

  Future<PaginatedDataIProjectWithUsers> getProjects({
    required int page,
    required int size,
  }) async {
    final response = await projectClient.getProjectList(page: page, size: size);
    return response.data;
  }

  Future<IProjectWithUsersTasks> getById({required String id}) async {
    final response = await projectClient.getProjectId(projectId: id);
    return response.data;
  }

  Future<IProjectRead> create({
    required String name,
    required String description,
  }) async {
    final response = await projectClient.postProject(
      body: IProject(
        name: name,
        description: description,
        link: '',
      ),
    );

    return response.data;
  }

  Future<IProjectRead> updateById({
    required String id,
    required String name,
    required String description,
  }) async {
    final response = await projectClient.putProjectId(
      projectId: id,
      body: IProjectUpdate(
        name: name,
        description: description,
      ),
    );

    return response.data;
  }

  Future<IProjectRead> deleteById({required String id}) async {
    final response = await projectClient.deleteProjectId(projectId: id);
    return response.data;
  }

  Future<IProjectWithUsers> joinProject({required String id}) async {
    final response = await projectClient.projectIdJoin(projectId: id);
    return response.data;
  }

  Future<IProjectWithUsers> leaveProject({required String id}) async {
    final response = await projectClient.projectIdLeave(projectId: id);
    return response.data;
  }
}
