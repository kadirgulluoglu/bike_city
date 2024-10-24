import 'package:bike_city/product/init/cache/base_cache.dart';
import 'package:bike_city/product/init/network/base_network_manager.dart';
import 'package:bike_city/product/state/view_model/init_view_model.dart';
import 'package:core/core.dart';
import 'package:get_it/get_it.dart';

final class BaseContainer {
  const BaseContainer._();

  static final GetIt _getIt = GetIt.I;

  static void init() {
    _getIt
      ..registerSingleton(BaseCache(cacheManager: HiveCacheManager()))
      ..registerSingleton<BaseNetworkManager>(BaseNetworkManager.init())
      ..registerSingleton<InitViewModel>(InitViewModel());
  }

  static T read<T extends Object>() => _getIt<T>();
}
