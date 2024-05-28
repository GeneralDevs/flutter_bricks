abstract interface class AuthUsecase {
  Future<Either<Failure, dynamic>> call();
}

