import 'package:bike_city/feature/home/service/login_service.dart';
import 'package:bike_city/feature/home/view/home_view.dart';
import 'package:bike_city/feature/home/view_model/home_view_model.dart';
import 'package:bike_city/product/init/network/base_network_manager_error.dart';
import 'package:bike_city/product/state/base/base_state.dart';
import 'package:bike_city/product/state/container/state_items.dart';

mixin HomeViewMixin on BaseState<HomeView> {
  late final BaseNetworkManagerError _baseNetworkManagerError;

  late final HomeViewModel _viewModel;

  HomeViewModel get viewModel => _viewModel;

  @override
  void initState() {
    _baseNetworkManagerError = BaseNetworkManagerError(context);
    StateItems.networkManager.listenErrorState(
      onError: (int statusCode) {
        _baseNetworkManagerError.handleError(statusCode);
      },
    );
    _viewModel = HomeViewModel(service: LoginService(networkManager));
    super.initState();
  }
}
