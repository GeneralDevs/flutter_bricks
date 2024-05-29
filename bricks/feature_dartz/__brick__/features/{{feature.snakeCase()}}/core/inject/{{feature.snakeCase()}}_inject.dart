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
        restClientPost: getIt<RestClientPost>(),
      ),
    );
  }
}