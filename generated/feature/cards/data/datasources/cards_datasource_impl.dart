import '../../core/exceptions/exceptions.dart';
import 'cards_datasource.dart';

final class CardsDatasourceImpl implements CardsDatasource {
CardsDatasourceImpl();

  @override
  Future<dynamic> call() async {
    try {

    } on Exception catch (error, stackTrace) {
      throw CardsException(
        message: error.toString(),
      );
    } catch (error, stackTrace) {
      throw CardsException(
        message: 'Error',
      );
    }
  }




}