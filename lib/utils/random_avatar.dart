// Get random avatar by hash(user_id)
import 'dart:convert';

import 'package:yuno/resources/resources.dart';
import 'package:crypto/crypto.dart';

class RandomAvatar {
  List<String> _avatars = [
    Assets.avatars.avatar0.path,
    Assets.avatars.avatar1.path,
    Assets.avatars.avatar2.path,
    Assets.avatars.avatar3.path,
    Assets.avatars.avatar4.path,
    Assets.avatars.avatar5.path,
    Assets.avatars.avatar6.path,
    Assets.avatars.avatar7.path,
    Assets.avatars.avatar8.path,
    Assets.avatars.avatar9.path,
  ];

  // function to get data
  String getAvatars(String id) => _avatars[md5.convert(utf8.encode(id)).hashCode % 10];
}
