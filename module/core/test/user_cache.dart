import 'package:core/src/cache/core/cache_model.dart';

class UserCache with CacheModel {
  UserCache({required this.id, required this.name});
  UserCache.empty() : this(id: '', name: '');
  @override
  final String id;
  final String name;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override

  /// from json dynamic method for cache model
  CacheModel fromJsonDynamic(dynamic json) {
    final itemMap = json as Map<String, dynamic>;
    return UserCache(
      id: itemMap['id'] as String,
      name: itemMap['name'] as String,
    );
  }
}
