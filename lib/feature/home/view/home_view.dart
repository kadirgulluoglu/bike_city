import 'package:auto_route/auto_route.dart';
import 'package:bike_city/feature/home/view/mixin/home_view_mixin.dart';
import 'package:bike_city/feature/home/view_model/home_view_model.dart';
import 'package:bike_city/feature/home/view_model/state/home_state.dart';
import 'package:bike_city/product/state/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => viewModel,
      child: Scaffold(
        appBar: const _HomeAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: _ItemList()),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            initViewModel.changeThemeMode(
              initViewModel.state.themeMode == ThemeMode.dark
                  ? ThemeMode.light
                  : ThemeMode.dark,
            );

            await viewModel.getUsers();
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}

final class _ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeState>(
      builder: (context, state) {
        return state.loading
            ? const Center(child: CircularProgressIndicator.adaptive())
            : ListView.builder(
                itemCount: state.users?.length,
                itemBuilder: (context, index) {
                  final users = state.users;
                  return ListTile(
                    title: Text(users?[index]?.name ?? ''),
                    subtitle: Text(users?[index]?.email ?? ''),
                  );
                },
              );
      },
    );
  }
}
