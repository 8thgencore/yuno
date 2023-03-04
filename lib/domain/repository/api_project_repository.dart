import 'package:yuno/api/project/models.dart';
import 'package:yuno/api/project/rest_client.dart';
import 'package:yuno/api/user/models/paginated_data_i_user_read.dart';

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

  Future<PaginatedDataIUserRead> getMembers({required String id});

  Future<StatisticsRead> getStats();
}

class ApiProjectRepository implements IProjectRepository {
  ApiProjectRepository({
    required this.projectClient,
  });

  final ProjectClient projectClient;

  @override
  Future<PaginatedDataIProjectWithUsers> getMyProjects({
    required int page,
    required int size,
  }) async {
    final response = await projectClient.getProjectMy(page: page, size: size);
    return response.data;
  }

  @override
  Future<PaginatedDataIProjectWithUsers> getProjects({
    required int page,
    required int size,
  }) async {
    final response = await projectClient.getProjectList(page: page, size: size);
    return response.data;
  }

  @override
  Future<IProjectWithUsersTasks> getById({required String id}) async {
    final response = await projectClient.getProjectId(projectId: id);
    return response.data;
  }

  @override
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

  @override
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

  @override
  Future<IProjectRead> deleteById({required String id}) async {
    final response = await projectClient.deleteProjectId(projectId: id);
    return response.data;
  }

  @override
  Future<IProjectWithUsers> joinProject({required String id}) async {
    final response = await projectClient.projectIdJoin(projectId: id);
    return response.data;
  }

  @override
  Future<IProjectWithUsers> leaveProject({required String id}) async {
    final response = await projectClient.projectIdLeave(projectId: id);
    return response.data;
  }

  @override
  Future<PaginatedDataIUserRead> getMembers({required String id}) async {
    final response = await projectClient.getProjectIdMembers(projectId: id);
    return response.data;
  }

  @override
  Future<StatisticsRead> getStats() async {
    final response = await projectClient.getProjectStats();
    return response.data;
  }
}
