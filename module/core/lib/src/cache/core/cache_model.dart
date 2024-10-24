/// CacheModel mixin
mixin CacheModel {
  /// id getter
  String get id;

  /// from json dynamic method for cache model
  CacheModel fromJsonDynamic(dynamic json);

  /// to json method for cache model
  Map<String, dynamic> toJson();
}
