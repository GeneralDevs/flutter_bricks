final class AuthCubit
    extends Cubit<AuthState> {
  AuthCubit({required AuthUsecase authUsecase,
  })  : _authUsecase = authUsecase,
        super(const AuthInitialState)  

final AuthUsecase _authUsecase;


}