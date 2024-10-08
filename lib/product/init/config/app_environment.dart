import 'package:bike_city/product/init/config/app_configuration.dart';
import 'package:bike_city/product/init/config/dev_env.dart';
import 'package:bike_city/product/init/config/prod_env.dart';
import 'package:flutter/foundation.dart';

final class AppEnvironment {
  AppEnvironment.init(IAppConfiguration config) {
    _config = config;
  }

  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final IAppConfiguration _config;

  static String get baseUrl => _config.baseUrl;
}

enum AppEnvironmentItem {
  baseUrl;

  String get value {
    switch (this) {
      case AppEnvironmentItem.baseUrl:
        return AppEnvironment._config.baseUrl;
    }
  }
}
