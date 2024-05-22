class {{feature.pascalCase()}}Exception implements Exception {
  final String message;

  const {{feature.pascalCase()}}Exception({required this.message});
}
