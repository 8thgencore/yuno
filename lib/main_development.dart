import 'package:yuno/app/app.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/bootstrap.dart';
import 'package:yuno/resources/environment.dart';

Future<void> main() async {
  // Load environment variables
  await Environment().init();

  initServiceLocator();

  await bootstrap(() => const App());
}
