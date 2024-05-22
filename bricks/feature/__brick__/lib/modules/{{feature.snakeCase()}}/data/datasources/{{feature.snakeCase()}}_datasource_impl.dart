import '../../core/exceptions/exceptions.dart';
import '{{feature.snakeCase()}}_datasource.dart';

final class {{feature.pascalCase()}}DatasourceImpl implements {{feature.pascalCase()}}Datasource {
{{feature.pascalCase()}}DatasourceImpl();

  @override
  Future<dynamic> call() async {
    try {

    } on Exception catch (error, stackTrace) {
      throw {{feature.pascalCase()}}Exception(
        message: error.toString(),
      );
    } catch (error, stackTrace) {
      throw {{feature.pascalCase()}}Exception(
        message: 'Error',
      );
    }
  }




}