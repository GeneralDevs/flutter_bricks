import '{{feature.snakeCase()}}_usecase.dart';
import '../../repository/{{feature.snakeCase()}}/{{feature.snakeCase()}}_repository.dart';

final class {{feature.pascalCase()}}UsecaseImpl implements {{feature.pascalCase()}}Usecase {
  const {{feature.pascalCase()}}UsecaseImpl({
    required {{feature.pascalCase()}}Repository {{feature.camelCase()}}Repository
  }) : _{{feature.camelCase()}}Repository = {{feature.camelCase()}}Repository;


  final {{feature.pascalCase()}}Repository _{{feature.camelCase()}}Repository;

  @override
  Future<Either<Failure, dynamic>> call() =>
    _{{feature.camelCase()}}Repository();
}

