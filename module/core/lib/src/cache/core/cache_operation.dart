import 'package:core/src/cache/core/cache_model.dart';

/// Cache Operation abstract class
abstract class CacheOperation<T extends CacheModel> {
  /// add method
  void add(T item);

  /// addall method
  void addAll(List<T> items);

  ///remove method with id
  void remove(String id);

  /// clear all method
  void clear();

  /// get all method
  List<T> getAll();

  /// get with id
  T? get(String id);
}
