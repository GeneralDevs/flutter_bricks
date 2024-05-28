abstract interface class AuthRepository {
  Future<Either<Failure, dynamic>> call();
}

