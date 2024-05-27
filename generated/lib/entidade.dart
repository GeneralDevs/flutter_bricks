import 'package:equatable/equatable.dart';
import 'package:testando_poha/user.dart';

class Entidade extends Equatable {
  const Entidade({
    this.firstName,
    this.lastName,
    required this.age,
    required this.isHappy,
    required this.favouriteNumber,
    required this.nicknames,
    required this.countriesVisited,
    required this.friends,
    required this.teste1,
    required this.teste2,
    required this.teste3,
    required this.teste4,
    required this.teste5,
    required this.teste6,
    required this.teste7,
    required this.teste8,
    required this.teste9,
    required this.teste10,
    required this.teste11,
    required this.teste12,
    required this.teste13,
    required this.teste14,
    required this.romeu,
  });

  final String? firstName;

  final String? lastName;

  final int age;

  final bool isHappy;

  final int favouriteNumber;

  final List<String> nicknames;

  final List<String?> countriesVisited;

  final List<User> friends;

  final String teste1;

  final String teste2;

  final String teste3;

  final String teste4;

  final String teste5;

  final String teste6;

  final String teste7;

  final String teste8;

  final String teste9;

  final String teste10;

  final String teste11;

  final String teste12;

  final String teste13;

  final String teste14;

  final int romeu;

  /// Creates a copy of the current Entidade with property changes
  Entidade copyWith({
    String? Function()? firstName,
    String? Function()? lastName,
    int? age,
    bool? isHappy,
    int? favouriteNumber,
    List<String>? nicknames,
    List<String?>? countriesVisited,
    List<User>? friends,
    String? teste1,
    String? teste2,
    String? teste3,
    String? teste4,
    String? teste5,
    String? teste6,
    String? teste7,
    String? teste8,
    String? teste9,
    String? teste10,
    String? teste11,
    String? teste12,
    String? teste13,
    String? teste14,
    int? romeu,
  }) {
    return Entidade(
      firstName: firstName != null ? firstName() : this.firstName,
      lastName: lastName != null ? lastName() : this.lastName,
      age: age ?? this.age,
      isHappy: isHappy ?? this.isHappy,
      favouriteNumber: favouriteNumber ?? this.favouriteNumber,
      nicknames: nicknames ?? this.nicknames,
      countriesVisited: countriesVisited ?? this.countriesVisited,
      friends: friends ?? this.friends,
      teste1: teste1 ?? this.teste1,
      teste2: teste2 ?? this.teste2,
      teste3: teste3 ?? this.teste3,
      teste4: teste4 ?? this.teste4,
      teste5: teste5 ?? this.teste5,
      teste6: teste6 ?? this.teste6,
      teste7: teste7 ?? this.teste7,
      teste8: teste8 ?? this.teste8,
      teste9: teste9 ?? this.teste9,
      teste10: teste10 ?? this.teste10,
      teste11: teste11 ?? this.teste11,
      teste12: teste12 ?? this.teste12,
      teste13: teste13 ?? this.teste13,
      teste14: teste14 ?? this.teste14,
      romeu: romeu ?? this.romeu,
    );
  }

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        age,
        isHappy,
        favouriteNumber,
        nicknames,
        countriesVisited,
        friends,
        teste1,
        teste2,
        teste3,
        teste4,
        teste5,
        teste6,
        teste7,
        teste8,
        teste9,
        teste10,
        teste11,
        teste12,
        teste13,
        teste14,
        romeu,
      ];
}
