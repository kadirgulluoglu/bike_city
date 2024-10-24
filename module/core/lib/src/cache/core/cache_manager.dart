import 'package:core/src/cache/core/cache_model.dart';

/// CacheManager abstract class
abstract class CacheManager {
  /// constructor method with path parameter
  CacheManager({this.path});

  /// init method
  Future<void> init({required List<CacheModel> models});

  /// remove method
  void remove();

  /// path variable
  final String? path;
}
