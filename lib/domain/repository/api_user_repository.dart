import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:yuno/api/user/models/i_image_upload.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/api/user/models/i_user_update.dart';
import 'package:yuno/api/user/rest_client.dart';
import 'package:yuno/data/repository/token_repository.dart';
import 'package:yuno/data/repository/user_repository.dart';

class ApiUserRepository {
  ApiUserRepository({
    required this.userClient,
    required this.userRepository,
    required this.tokenRepository,
  });

  final UserClient userClient;
  final UserRepository userRepository;
  final TokenRepository tokenRepository;

  Future<IUserRead> getData() async {
    final response = await userClient.getUser();
    final user = response.data;
    await userRepository.setItem(user);
    return user;
  }

  Future<IUserRead?> getCachedData() async {
    final user = await userRepository.getItem();
    return user;
  }

  Future<IUserRead?> updateDataById({
    required String firstName,
    required String lastName,
    required String email,
    required String username,
  }) async {
    final user = await userRepository.getItem();
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
      await userRepository.setItem(data);

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
    await userRepository.setItem(user);

    return user;
  }
}
