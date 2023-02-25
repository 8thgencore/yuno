import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:yuno/app/app.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/bootstrap.dart';

Future<void> main() async {
  await dotenv.load();
  initServiceLocator();

  await bootstrap(() => const App());
}
