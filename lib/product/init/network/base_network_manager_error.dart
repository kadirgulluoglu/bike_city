import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bike_city/product/navigation/app_router.dart';
import 'package:flutter/cupertino.dart';

class BaseNetworkManagerError {
  BaseNetworkManagerError(this.context);

  final BuildContext context;

  void handleError(int value) {
    switch (value) {
      case HttpStatus.unauthorized:
        // TODO(kadirrgulluoglu): loginle değiştir
        context.router.push(HomeDetailRoute(id: '1'));
      case HttpStatus.notFound:
        debugPrint('404');
    }
  }
}
