import 'package:auto_route/auto_route.dart';
import 'package:bike_city/feature/home/view/home_detail_view.dart';
import 'package:bike_city/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: AppRouter._replaceRouteName)
final class AppRouter extends _$AppRouter {
  static const _replaceRouteName = 'View,Route';

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: HomeDetailRoute.page),
      ];
}
