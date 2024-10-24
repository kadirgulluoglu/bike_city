import 'package:core/core.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

class UserCacheModel with CacheModel {
  UserCacheModel({required this.user});

  UserCacheModel.empty() : user = const User();

  final User user;

  @override
  UserCacheModel fromJsonDynamic(dynamic json) {
    final jsonMap = json as Map<String, dynamic>?;
    if (jsonMap == null) {
      CustomLogger.showError<User>('Json map is null');
      return this;
    }

    return copyWith(user: user.fromJson(jsonMap));
  }

  @override
  String get id => user.id.toString();

  @override
  Map<String, dynamic> toJson() => user.toJson();

  // copywith method
  UserCacheModel copyWith({
    User? user,
  }) {
    return UserCacheModel(
      user: user ?? this.user,
    );
  }
}
