import 'package:bike_city/product/init/config/app_environment.dart';
import 'package:bike_city/product/init/network/base_network_manager.dart';
import 'package:bike_city/product/init/network/service_paths.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

void main() {
  late final BaseNetworkManager manager;
  setUp(() {
    AppEnvironment.general();
    manager = BaseNetworkManager.init();
  });
  test(
    'Get Fake Data',
    () async {
      final response = await manager.send<User, List<User>>(
        ServicePaths.user.path,
        parseModel: const User(),
        method: RequestType.GET,
      );
      expect(response.data, isNotNull);
    },
  );
}
