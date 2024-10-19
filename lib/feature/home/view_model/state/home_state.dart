import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class HomeState extends Equatable {
  const HomeState({
    required this.loading,
    this.users,
  });

  final bool loading;
  final List<User?>? users;

  @override
  List<Object?> get props => [loading, users];

  HomeState copyWith({
    bool? loading,
    List<User?>? users,
  }) {
    return HomeState(
      loading: loading ?? this.loading,
      users: users ?? this.users,
    );
  }
}
