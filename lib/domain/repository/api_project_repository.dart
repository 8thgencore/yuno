import 'package:yuno/api/project/models.dart';
import 'package:yuno/api/project/rest_client.dart';

class ApiProjectRepository {
  ApiProjectRepository({
    required this.projectClient,
  });

  final ProjectClient projectClient;

  Future<List<IProjectWithUsers>> getMyProjects({required int size}) async {
    final response = await projectClient.getProjectMy(size: size);
    return response.data.items;
  }

  Future<List<IProjectWithUsers>> getProjects({required int size}) async {
    final response = await projectClient.getProjectList(size: size);
    return response.data.items;
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
    final response = await projectClient.projectIdJoin(projectId: id);
    return response.data;
  }
}
