import '../repositories/cards_repository.dart';
import 'cards_usecase.dart';


final class CardsUsecaseImpl implements CardsUsecase {
  CardsUsecaseImpl({required CardsRepository repository})
  : _repository = repository;

  final CardsRepository _repository;

  @override
  Future<(dynamic, dynamic)> call() => _repository();

}