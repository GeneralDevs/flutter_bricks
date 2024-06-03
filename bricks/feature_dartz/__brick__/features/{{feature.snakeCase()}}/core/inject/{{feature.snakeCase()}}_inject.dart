import '../../data/datasources/{{feature.snakeCase()}}/{{feature.snakeCase()}}_datasource.dart';
import '../../data/datasources/{{feature.snakeCase()}}/{{feature.snakeCase()}}_datasource_impl.dart';
import '../../data/repositories/{{feature.snakeCase()}}/{{feature.snakeCase()}}_repository_impl.dart';
import '../../domain/repository/{{feature.snakeCase()}}/{{feature.snakeCase()}}_repository.dart';
import '../../domain/usecases/{{feature.snakeCase()}}/{{feature.snakeCase()}}_usecase.dart';
import '../../domain/usecases/{{feature.snakeCase()}}/{{feature.snakeCase()}}_usecase_impl.dart';

sealed class {{feature.pascalCase()}}Inject {
  static void inject(GetIt getIt) {
    getIt.registerFactory<{{feature.pascalCase()}}Usecase>(
      () => {{feature.pascalCase()}}UsecaseImpl(
        {{feature.camelCase()}}Repository: getIt<{{feature.pascalCase()}}Repository>(),
      ),
    );

    getIt.registerFactory<{{feature.pascalCase()}}Repository>(
      () => {{feature.pascalCase()}}RepositoryImpl(
        {{feature.camelCase()}}Datasource: getIt<{{feature.pascalCase()}}Datasource>(),
      ),
    );

    getIt.registerFactory<{{feature.pascalCase()}}Datasource>(
      () => {{feature.pascalCase()}}DatasourceImpl(
        restClient{{http_method.pascalCase()}}: getIt<RestClient{{http_method.pascalCase()}}>(),
      ),
    );
  }
}