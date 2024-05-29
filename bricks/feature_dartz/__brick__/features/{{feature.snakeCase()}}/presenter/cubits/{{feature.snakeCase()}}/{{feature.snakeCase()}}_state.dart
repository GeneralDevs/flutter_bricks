part of '{{feature.snakeCase()}}_cubit.dart';

sealed class {{feature.pascalCase()}}State extends Equatable {
  const {{feature.pascalCase()}}State();

  @override
  List<Object?> get props => [];
}

final class {{feature.pascalCase()}}InitialState extends {{feature.pascalCase()}}State {
  const {{feature.pascalCase()}}InitialState();
}

final class {{feature.pascalCase()}}LoadingState extends {{feature.pascalCase()}}State {
  const {{feature.pascalCase()}}LoadingState();
}


final class {{feature.pascalCase()}}ErrorState extends {{feature.pascalCase()}}State {
  const {{feature.pascalCase()}}ErrorState({required this.message,
  });


  final String message;

  @override
  List<Object?> get props => [message];
}


final class {{feature.pascalCase()}}SuccessState extends {{feature.pascalCase()}}State {
  const {{feature.pascalCase()}}SuccessState();
}

