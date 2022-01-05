import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvUtil {
  static final String? _apiKey = dotenv.env['API_KEY'];
  static final String? _country = dotenv.env['COUNTRY'];

  static String get apiKey => _apiKey ?? '';
  static String get country => _country ?? '';
}
