import 'package:equatable/equatable.dart';

/// {@template teste}
/// Teste description
/// {@endtemplate}
class Teste extends Equatable {
  /// {@macro teste}
  const Teste();

    /// Creates a Teste from Json map
  factory Teste.fromJson(Map<String, dynamic> json) => Teste(
      );

    /// Creates a copy of the current Teste with property changes
  Teste copyWith() {
    return Teste(
    );
  }


    @override
  List<Object?> get props => [
      ];

    /// Creates a Json map from a Teste
  Map<String, dynamic> toJson() => <String, dynamic>{ 
      };

    /// Creates a toString() override for Teste
  @override
  String toString() => 'Teste()';
}
