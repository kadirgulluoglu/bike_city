import 'package:bike_city/feature/home/view/home_view.dart';
import 'package:bike_city/product/init/network/base_network_manager.dart';
import 'package:bike_city/product/init/network/base_network_manager_error.dart';
import 'package:flutter/material.dart';

mixin HomeViewMixin on State<HomeView> {
  late final BaseNetworkManagerError _baseNetworkManagerError;
  late final BaseNetworkManager _baseNetworkManager;

  @override
  void initState() {
    _baseNetworkManager = BaseNetworkManager.init();
    _baseNetworkManagerError = BaseNetworkManagerError(context);
    _baseNetworkManager.listenErrorState(
      onError: (int statusCode) {
        _baseNetworkManagerError.handleError(statusCode);
      },
    );
    super.initState();
  }
}
