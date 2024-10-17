import 'dart:io';

import 'package:bike_city/product/init/config/app_environment.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

final class BaseNetworkManager extends NetworkManager<EmptyModel> {
  BaseNetworkManager.init()
      : super(
          options: BaseOptions(
            baseUrl: AppEnvironmentItem.baseUrl.value,
          ),
        );

  void listenErrorState({required ValueChanged<int> onError}) {
    interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          onError(error.response?.statusCode ?? HttpStatus.notFound);
          return handler.next(error);
        },
      ),
    );
  }
}
