import 'package:bike_city/product/init/application_initialize.dart';
import 'package:bike_city/product/init/project_localization.dart';
import 'package:bike_city/product/init/state_initialize.dart';
import 'package:bike_city/product/init/theme/index.dart';
import 'package:bike_city/product/navigation/app_router.dart';
import 'package:bike_city/product/state/view_model/init_view_model.dart';
import 'package:bike_city/product/utility/constants/application/application_constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/widgets.dart';

Future<void> main() async {
  await ApplicationInitialize().init();
  runApp(
    ProjectLocalization(
      child: const StateInitialize(child: MyApp()),
    ),
  );
}

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: CustomResponsive.build,
      routerConfig: _appRouter.config(),
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: context.watch<InitViewModel>().state.themeMode,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: ApplicationConstants.title,
    );
  }
}
