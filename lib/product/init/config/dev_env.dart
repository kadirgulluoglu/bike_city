import 'package:bike_city/product/init/config/app_configuration.dart';
import 'package:envied/envied.dart';

part 'dev_env.g.dart';

@Envied(obfuscate: true, path: 'assets/env/.dev.env')
final class DevEnv implements IAppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;

  @override
  String get baseUrl => _baseUrl;
}
