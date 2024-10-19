import 'package:bike_city/product/state/base/base_cubit.dart';
import 'package:bike_city/product/state/view_model/init_state.dart';
import 'package:flutter/material.dart';

class InitViewModel extends BaseCubit<InitState> {
  InitViewModel() : super(const InitState());

  void changeThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }
}
