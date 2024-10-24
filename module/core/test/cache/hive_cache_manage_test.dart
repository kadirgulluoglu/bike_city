import 'package:core/src/cache/hive/hive_cache_manager.dart';
import 'package:core/src/cache/hive/hive_cache_operation.dart';
import 'package:flutter_test/flutter_test.dart';

import '../core/hive_common_test.dart';
import '../user_cache.dart';

void main() {
  setUp(() async {
    await initTests();
    final coreManager = HiveCacheManager(
      path: 'test/hive/',
    );
    await coreManager.init(
      models: [
        UserCache.empty(),
      ],
    );
  });
  test('Add a data for database', () {
    final userOperation = HiveCacheOperation<UserCache>()
      ..add(UserCache(id: '1', name: 'kadirg'));

    final item = userOperation.get('1');

    expect(item, isNotNull);
  });
}
