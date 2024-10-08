import 'package:bike_city/product/init/config/app_configuration.dart';
import 'package:envied/envied.dart';

part 'prod_env.g.dart';

@Envied(obfuscate: true, path: 'assets/env/.prod.env')
final class ProdEnv implements IAppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv._baseUrl;

  @override
  String get baseUrl => _baseUrl;
}
