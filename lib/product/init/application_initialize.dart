import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable
final class ApplicationInitialize {
  Future<void> init() async {
    await runZonedGuarded<Future<void>>(_initialize, (error, stackTrace) {
      Logger().e(error.toString());
      Logger().e(stackTrace.toString());
    });
  }

  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await DeviceUtility.instance.initPackageInfo();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];

    FlutterError.onError = (details) {
      // TODO(kadirrgulluoglu): Add Firebase Crashlytics
      Logger().e(details.exceptionAsString());
    };
  }
}
