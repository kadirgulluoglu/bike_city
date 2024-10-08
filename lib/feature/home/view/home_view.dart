import 'package:bike_city/feature/home/view/mixin/home_view_mixin.dart';
import 'package:bike_city/product/init/config/app_environment.dart';
import 'package:bike_city/product/init/language/locale_keys.g.dart';
import 'package:bike_city/product/init/project_localization.dart';
import 'package:bike_city/product/utility/constants/enum/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

part 'widget/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              ProjectLocalization.changeLocale(
                context,
                Locales.en,
              );
            },
            child: const Text(LocaleKeys.general_button_save).tr(
              args: ['Deneme'],
            ),
          ),
          Assets.image.imgBike.image(),
          Text(AppEnvironmentItem.baseUrl.value),
        ],
      ),
    );
  }
}
