import '../../../domain/repository/{{feature.snakeCase()}}/{{feature.snakeCase()}}_repository.dart';
import '../../datasources/{{feature.snakeCase()}}/{{feature.snakeCase()}}_datasource.dart';


final class {{feature.pascalCase()}}RepositoryImpl implements {{feature.pascalCase()}}Repository {
  const {{feature.pascalCase()}}RepositoryImpl({
    required {{feature.pascalCase()}}Datasource {{feature.camelCase()}}Datasource,
  }) : _{{feature.camelCase()}}DataSource = {{feature.camelCase()}}Datasource;


  final {{feature.pascalCase()}}Datasource _{{feature.camelCase()}}DataSource;

}