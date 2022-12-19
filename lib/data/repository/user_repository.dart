import 'dart:convert';

import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/data/repository/base/reactive_repository.dart';
import 'package:yuno/data/repository/user_provider.dart';

class UserRepository extends ReactiveRepository<IUserRead> {
  UserRepository(this._userProvider);

  final UserProvider _userProvider;

  @override
  IUserRead convertFromString(String rawItem) => IUserRead.fromJson(
        json.decode(rawItem) as Map<String, dynamic>,
      );

  @override
  String convertToString(IUserRead item) => json.encode(item.toJson());

  @override
  Future<String?> getRawData() => _userProvider.getUser();

  @override
  Future<bool> saveRawData(String? item) => _userProvider.setUser(item);
}
