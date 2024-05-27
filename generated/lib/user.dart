import 'package:equatable/equatable.dart';
import 'package:testando_poha/user.dart';

/// {@template user}
/// User description
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({ 
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

    /// Creates a User from Json map
  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        age: json['age'] as int,
        isHappy: json['isHappy'] as bool,
        favouriteNumber: json['favouriteNumber'] as int,
        nicknames: json['nicknames'] as List<String>,
        countriesVisited: json['countriesVisited'] as List<String?>,
        friends: (json['friends'] as List<dynamic>).map((dynamic e) => User.fromJson(e as Map<String, dynamic>)).toList(),
        teste1: json['teste1'] as String,
        teste2: json['teste2'] as String,
        teste3: json['teste3'] as String,
        teste4: json['teste4'] as String,
        teste5: json['teste5'] as String,
        teste6: json['teste6'] as String,
        teste7: json['teste7'] as String,
        teste8: json['teste8'] as String,
        teste9: json['teste9'] as String,
        teste10: json['teste10'] as String,
        teste11: json['teste11'] as String,
        teste12: json['teste12'] as String,
        teste13: json['teste13'] as String,
        teste14: json['teste14'] as String,
        romeu: json['romeu'] as int,
      );

  /// A description for firstName
  final String? firstName;

  /// A description for lastName
  final String? lastName;

  /// A description for age
  final int age;

  /// A description for isHappy
  final bool isHappy;

  /// A description for favouriteNumber
  final int favouriteNumber;

  /// A description for nicknames
  final List<String> nicknames;

  /// A description for countriesVisited
  final List<String?> countriesVisited;

  /// A description for friends
  final List<User> friends;

  /// A description for teste1
  final String teste1;

  /// A description for teste2
  final String teste2;

  /// A description for teste3
  final String teste3;

  /// A description for teste4
  final String teste4;

  /// A description for teste5
  final String teste5;

  /// A description for teste6
  final String teste6;

  /// A description for teste7
  final String teste7;

  /// A description for teste8
  final String teste8;

  /// A description for teste9
  final String teste9;

  /// A description for teste10
  final String teste10;

  /// A description for teste11
  final String teste11;

  /// A description for teste12
  final String teste12;

  /// A description for teste13
  final String teste13;

  /// A description for teste14
  final String teste14;

  /// A description for romeu
  final int romeu;

    /// Creates a copy of the current User with property changes
  User copyWith({ 
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
    return User(
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

    /// Creates a Json map from a User
  Map<String, dynamic> toJson() => <String, dynamic>{ 
        'firstName': firstName,
        'lastName': lastName,
        'age': age,
        'isHappy': isHappy,
        'favouriteNumber': favouriteNumber,
        'nicknames': nicknames,
        'countriesVisited': countriesVisited,
        'friends': friends,
        'teste1': teste1,
        'teste2': teste2,
        'teste3': teste3,
        'teste4': teste4,
        'teste5': teste5,
        'teste6': teste6,
        'teste7': teste7,
        'teste8': teste8,
        'teste9': teste9,
        'teste10': teste10,
        'teste11': teste11,
        'teste12': teste12,
        'teste13': teste13,
        'teste14': teste14,
        'romeu': romeu,
      };

    /// Creates a toString() override for User
  @override
  String toString() => 'User(firstName: $firstName, lastName: $lastName, age: $age, isHappy: $isHappy, favouriteNumber: $favouriteNumber, nicknames: $nicknames, countriesVisited: $countriesVisited, friends: $friends, teste1: $teste1, teste2: $teste2, teste3: $teste3, teste4: $teste4, teste5: $teste5, teste6: $teste6, teste7: $teste7, teste8: $teste8, teste9: $teste9, teste10: $teste10, teste11: $teste11, teste12: $teste12, teste13: $teste13, teste14: $teste14, romeu: $romeu)';
}
