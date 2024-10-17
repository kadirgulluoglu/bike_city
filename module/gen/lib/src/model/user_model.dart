import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User extends INetworkModel<User> with EquatableMixin {
  const User({
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
  });

  @override
  User fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        username,
        email,
        phone,
        website,
      ];

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final String? phone;
  final String? website;
}
