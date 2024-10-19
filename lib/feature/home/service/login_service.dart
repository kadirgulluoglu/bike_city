import 'package:bike_city/product/init/network/service_paths.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

final class LoginService {
  LoginService(INetworkManager<EmptyModel> manager) : _manager = manager;
  final INetworkManager<EmptyModel> _manager;

  Future<List<User>> getUsers() async {
    final response = await _manager.send<User, List<User>>(
      ServicePaths.user.path,
      parseModel: const User(),
      method: RequestType.GET,
    );
    return response.data ?? [];
  }
}
