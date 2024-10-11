import 'package:bike_city/product/init/application_initialize.dart';
import 'package:bike_city/product/init/project_localization.dart';
import 'package:bike_city/product/init/theme/index.dart';
import 'package:bike_city/product/navigation/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await ApplicationInitialize().init();
  runApp(
    ProjectLocalization(
      child: const MyApp(),
    ),
  );
}

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Bike City',
    );
  }
}
