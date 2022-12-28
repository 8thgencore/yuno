import 'package:flutter_dotenv/flutter_dotenv.dart';

final baseUrl = dotenv.maybeGet('BACKEND_URL') ?? '';

