import 'package:core/src/cache/core/cache_manager.dart';
import 'package:core/src/cache/core/cache_model.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/// HiveCacheManager class
final class HiveCacheManager extends CacheManager {
  /// constructor method with path parameter
  HiveCacheManager({super.path});
  @override
  Future<void> init({required List<CacheModel> models}) async {
    final documentPath =
        path ?? (await getApplicationDocumentsDirectory()).path;
    Hive.defaultDirectory = documentPath;
    for (final model in models) {
      Hive.registerAdapter('${model.runtimeType}', model.fromJsonDynamic);
    }
  }

  @override
  void remove() {
    Hive.deleteAllBoxesFromDisk();
  }
}
