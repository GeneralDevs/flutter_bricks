import '../../../../core/cubit/cubit.dart';
import '../../domain/usecases/{{feature.snakeCase()}}_usecase.dart';
import '{{feature.snakeCase()}}_state.dart';

final class {{feature.pascalCase()}}Cubit extends BaseController<{{feature.pascalCase()}}State> {
  final {{feature.pascalCase()}}Usecase _usecase;

  {{feature.pascalCase()}}Cubit({required {{feature.pascalCase()}}Usecase usecase})
      : _usecase = usecase,
        super(
          {{feature.pascalCase()}}InitialState(),
        );

  
}
