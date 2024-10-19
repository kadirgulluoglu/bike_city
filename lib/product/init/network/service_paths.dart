enum ServicePaths {
  dummy('dummy'),
  user('users');

  const ServicePaths(this.path);

  final String path;

  String withId(String id) {
    return '$path/$id';
  }
}
