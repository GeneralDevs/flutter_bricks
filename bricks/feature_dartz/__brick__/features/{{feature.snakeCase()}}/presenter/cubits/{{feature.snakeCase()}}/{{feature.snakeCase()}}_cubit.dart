final class {{feature.pascalCase()}}Cubit
    extends Cubit<{{feature.pascalCase()}}State> {
  {{feature.pascalCase()}}Cubit({required {{feature.pascalCase()}}Usecase {{feature.camelCase()}}Usecase,
  })  : _{{feature.camelCase()}}Usecase = {{feature.camelCase()}}Usecase,
        super(const {{feature.pascalCase()}}InitialState)  

final {{feature.pascalCase()}}Usecase _{{feature.camelCase()}}Usecase;


}