import '../../../../core/states/base_state.dart';

class {{feature.pascalCase()}}State implements BaseState {}

class {{feature.pascalCase()}}InitialState extends {{feature.pascalCase()}}State {}

class {{feature.pascalCase()}}LoadingState extends {{feature.pascalCase()}}State {}

class {{feature.pascalCase()}}ErrorState extends {{feature.pascalCase()}}State {
  final String errorMessage;
  {{feature.pascalCase()}}ErrorState({required this.errorMessage});
}

class {{feature.pascalCase()}}SuccessState extends {{feature.pascalCase()}}State {

}
