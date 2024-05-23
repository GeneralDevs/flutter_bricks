
final class {{feature.pascalCase()}}UsecaseImpl implements {{feature.pascalCase()}}Usecase {
  const {{feature.pascalCase()}}UsecaseImpl({
    required {{feature.pascalCase()}}Repository 
  })


  final {{feature.pascalCase()}}Repository _{{feature.camelCase()}}Repository;

  @override
  Future<Either<Failure, dynamic>> call() =>
    _{{feature.camelCase()}}Repository();
}

