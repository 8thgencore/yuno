import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:yuno/api/user/models/i_image_upload.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/api/user/models/i_user_update.dart';
import 'package:yuno/api/user/rest_client.dart';
import 'package:yuno/data/repository/token_data_repository.dart';
import 'package:yuno/data/repository/user_data_repository.dart';

class ApiUserRepository {
  ApiUserRepository({
    required this.userClient,
    required this.userDataRepository,
    required this.tokenDataRepository,
  });

  final UserClient userClient;
  final UserDataRepository userDataRepository;
  final TokenDataRepository tokenDataRepository;

  Future<IUserRead> getData() async {
    final response = await userClient.getUser();
    final user = response.data;
    await userDataRepository.setItem(user);
    return user;
  }

  Future<IUserRead?> getCachedData() async {
    final user = await userDataRepository.getItem();
    return user;
  }

  Future<IUserRead?> updateDataById({
    required String firstName,
    required String lastName,
    required String email,
    required String username,
  }) async {
    final user = await userDataRepository.getItem();
    if (user != null) {
      final response = await userClient.putUserUserId(
        userId: user.id,
        body: IUserUpdate(
          firstName: firstName,
          lastName: lastName,
          email: email,
          username: username,
          birthdate: user.birthdate,
          phone: user.phone,
          roleId: user.roleId,
        ),
      );

      final data = response.data;
      await userDataRepository.setItem(data);

      return data;
    }
    return null;
  }

  Future<IUserRead> loadImage({
    required PlatformFile file,
  }) async {
    final response = await userClient.postUserImage(
      file: const IImageUpload(
        title: '',
        description: '',
      ),
      imageFile: File(file.path!),
    );

    final user = response.data;
    await userDataRepository.setItem(user);

    return user;
  }
}
