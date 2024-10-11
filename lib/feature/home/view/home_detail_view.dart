import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

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
      body: const Column(
        children: [
          Text('Home Detail'),
        ],
      ),
    );
  }
}
