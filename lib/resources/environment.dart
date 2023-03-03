import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  //load environment variables
  Future<void> init() async {
    await dotenv.load();
  }

  // function to get data
  static String getEnv(String key) => dotenv.env[key].toString();

  // Direct access to the environment variables
  static String get baseUrl => getEnv('BACKEND_URL');
}
