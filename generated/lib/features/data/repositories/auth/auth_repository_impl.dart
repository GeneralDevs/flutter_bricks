final class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required AuthDatasource authDatasource,
  }) : _authDataSource = authDatasource;


  final AuthDatasource _authDataSource;

}