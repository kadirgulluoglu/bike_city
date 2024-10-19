import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class InitState extends Equatable {
  const InitState({this.themeMode = ThemeMode.dark});

  final ThemeMode themeMode;

  @override
  List<Object> get props => [themeMode];

  InitState copyWith({
    ThemeMode? themeMode,
  }) {
    return InitState(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
