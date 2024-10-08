import 'package:bike_city/product/init/theme/custom_color_scheme.dart';
import 'package:bike_city/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';

final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        colorScheme: CustomColorScheme.darkColorScheme,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      FloatingActionButtonThemeData(
        backgroundColor: CustomColorScheme.darkColorScheme.primary,
        shape: const CircleBorder(),
      );
}
