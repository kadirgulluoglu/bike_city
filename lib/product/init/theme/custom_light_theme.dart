import 'package:bike_city/product/init/theme/custom_color_scheme.dart';
import 'package:bike_city/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';

final class CustomLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        colorScheme: CustomColorScheme.lightColorScheme,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      FloatingActionButtonThemeData(
        backgroundColor: CustomColorScheme.lightColorScheme.primary,
        shape: const CircleBorder(),
      );
}
