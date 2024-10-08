import 'package:bike_city/feature/home/view/home_view.dart';
import 'package:bike_city/product/init/application_initialize.dart';
import 'package:bike_city/product/init/project_localization.dart';
import 'package:bike_city/product/init/theme/index.dart';
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Bike City',
      home: const HomeView(),
    );
  }
}
