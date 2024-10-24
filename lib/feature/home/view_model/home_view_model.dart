import 'package:bike_city/feature/home/service/login_service.dart';
import 'package:bike_city/feature/home/view_model/state/home_state.dart';
import 'package:bike_city/product/init/cache/user_cache_model.dart';
import 'package:bike_city/product/state/base/base_cubit.dart';
import 'package:bike_city/product/state/container/state_items.dart';
import 'package:gen/gen.dart';

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
    cacheUser(users);
    changeLoading;
    emit(state.copyWith(users: users));
  }

  void cacheUser(List<User> user) {
    final addUser = user.map((e) => UserCacheModel(user: e)).toList();
    StateItems.cache.userCacheOperation.addAll(addUser);
  }

  List<User> get _users =>
      StateItems.cache.userCacheOperation.getAll().map((e) => e.user).toList();
}
