import 'package:bike_city/product/utility/constants/enum/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable
final class ProjectLocalization extends EasyLocalization {
  ProjectLocalization({required super.child, super.key})
      : super(
          path: _path,
          supportedLocales: _supportedLocales,
          useOnlyLangCode: true,
        );

  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _path = 'assets/translations';

  static void changeLocale(BuildContext context, Locales value) =>
      context.setLocale(value.locale);
}
