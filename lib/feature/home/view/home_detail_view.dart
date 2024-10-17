import 'package:auto_route/annotations.dart';
import 'package:bike_city/product/init/language/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

@RoutePage()
final class HomeDetailView extends StatelessWidget {
  const HomeDetailView({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Detail'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ConfirmationDialog.show(
                context: context,
                title: 'Deneme Title',
                message: 'Deneme Message',
              );
            },
            child: const Text(LocaleKeys.home_title).tr(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
