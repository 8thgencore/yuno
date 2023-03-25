import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:yuno/domain/services/remote_config_service.dart';

class Environment {
  static Future<void> init() async {
    await dotenv.load();

    await RemoteConfigService().initConfig();
    await RemoteConfigService().fetch();
  }

  // function to get data
  static String getEnv(String key) => dotenv.env[key].toString();

  static String get baseUrl {
    final baseUrl = RemoteConfigService().getString('BACKEND_URL');
    if (baseUrl.isEmpty || baseUrl == '') {
      return getEnv('BACKEND_URL');
    }
    return baseUrl;
  }
}
