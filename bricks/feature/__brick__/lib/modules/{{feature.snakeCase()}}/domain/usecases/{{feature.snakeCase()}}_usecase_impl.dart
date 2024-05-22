import '../repositories/{{feature.snakeCase()}}_repository.dart';
import '{{feature.snakeCase()}}_usecase.dart';


final class {{feature.pascalCase()}}UsecaseImpl implements {{feature.pascalCase()}}Usecase {
  {{feature.pascalCase()}}UsecaseImpl({required {{feature.pascalCase()}}Repository repository})
  : _repository = repository;

  final {{feature.pascalCase()}}Repository _repository;

  @override
  Future<(dynamic, dynamic)> call() => _repository();

}