import 'package:bike_city/feature/home/service/login_service.dart';
import 'package:bike_city/feature/home/view_model/state/home_state.dart';
import 'package:bike_city/product/state/base/base_cubit.dart';

final class HomeViewModel extends BaseCubit<HomeState> {
  HomeViewModel({required LoginService service})
      : _service = service,
        super(
          const HomeState(loading: false),
        );

  late final LoginService _service;

  void get changeLoading {
    emit(state.copyWith(loading: !state.loading));
  }

  Future<void> getUsers() async {
    changeLoading;
    final users = await _service.getUsers();
    changeLoading;
    emit(state.copyWith(users: users));
  }
}
