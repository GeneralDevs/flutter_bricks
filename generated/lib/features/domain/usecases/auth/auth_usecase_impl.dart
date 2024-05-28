import 'auth_usecase.dart';
import '../../repository/auth/auth_repository.dart';

final class AuthUsecaseImpl implements AuthUsecase {
  const AuthUsecaseImpl({
    required AuthRepository authRepository
  }) : _authRepository = authRepository;


  final AuthRepository _authRepository;

  @override
  Future<Either<Failure, dynamic>> call() =>
    _authRepository();
}

