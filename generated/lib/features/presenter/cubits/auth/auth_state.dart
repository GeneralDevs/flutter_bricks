part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

final class AuthInitialState extends AuthState {
  const AuthInitialState();
}

final class AuthLoadingState extends AuthState {
  const AuthLoadingState();
}


final class AuthErrorState extends AuthState {
  const AuthErrorState({required this.message,
  });


  final String message;

  @override
  List<Object?> get props => [message];
}


final class AuthSuccessState extends AuthState {
  const AuthSuccessState();
}

