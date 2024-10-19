import 'package:bike_city/product/state/container/state_items.dart';
import 'package:bike_city/product/state/view_model/init_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StateInitialize extends StatelessWidget {
  const StateInitialize({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InitViewModel>.value(
          value: StateItems.initViewModel,
        ),
      ],
      child: child,
    );
  }
}
