import 'package:bike_city/product/init/cache/base_cache.dart';
import 'package:bike_city/product/init/network/base_network_manager.dart';
import 'package:bike_city/product/state/container/base_container.dart';
import 'package:bike_city/product/state/view_model/init_view_model.dart';

final class StateItems {
  const StateItems._();

  static BaseNetworkManager get networkManager =>
      BaseContainer.read<BaseNetworkManager>();

  static InitViewModel get initViewModel => BaseContainer.read<InitViewModel>();

  static BaseCache get cache => BaseContainer.read<BaseCache>();
}
