import 'package:flutter/cupertino.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Custom responsive class
/// [MOBILE] - 0 to 450
/// [TABLET] - 451 to 800
/// [DESKTOP] - 801 to 1920
/// [4K] - 1921 to infinity

final class CustomResponsive {
  /// Make to ui responsive
  static Widget build(BuildContext context, Widget? child) {
    return ResponsiveBreakpoints.builder(
      child: child!,
      breakpoints: [
        const Breakpoint(start: 0, end: 450, name: MOBILE),
        const Breakpoint(start: 451, end: 800, name: TABLET),
        const Breakpoint(start: 801, end: 1920, name: DESKTOP),
        const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ],
    );
  }
}
