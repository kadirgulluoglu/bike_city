import 'package:bike_city/product/init/network/base_network_manager.dart';
import 'package:bike_city/product/state/container/state_items.dart';
import 'package:bike_city/product/state/view_model/init_view_model.dart';
import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  BaseNetworkManager get networkManager => StateItems.networkManager;

  InitViewModel get initViewModel => StateItems.initViewModel;
}
