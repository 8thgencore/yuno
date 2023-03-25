import 'package:yuno/app/app.dart';
import 'package:yuno/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
