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
    required this.one,
    required this.two,
    required this.awe,
    required this.owaeawne,
    required this.eawe,
    required this.awaeaw,
    required this.waeaw,
    required this.oeaweawne,
    required this.aweaw,
    required this.eaw,
    required this.eaw,
    required this.eweawewaa,
    required this.wae,
    required this.awe,
    required this.ewa,
    required this.ewa,
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
        one: json['one'] as String,
        two: json['two'] as String,
        awe: json['awe'] as String,
        owaeawne: json['owaeawne'] as String,
        eawe: json['eawe'] as String,
        awaeaw: json['awaeaw'] as String,
        waeaw: json['waeaw'] as String,
        oeaweawne: json['oeaweawne'] as String,
        aweaw: json['aweaw'] as String,
        eaw: json['eaw'] as String,
        eaw: json['eaw'] as String,
        eweawewaa: json['eweawewaa'] as String,
        wae: json['wae'] as String,
        awe: json['awe'] as String,
        ewa: json['ewa'] as String,
        ewa: json['ewa'] as String,
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

  /// A description for one
  final String one;

  /// A description for two
  final String two;

  /// A description for awe
  final String awe;

  /// A description for owaeawne
  final String owaeawne;

  /// A description for eawe
  final String eawe;

  /// A description for awaeaw
  final String awaeaw;

  /// A description for waeaw
  final String waeaw;

  /// A description for oeaweawne
  final String oeaweawne;

  /// A description for aweaw
  final String aweaw;

  /// A description for eaw
  final String eaw;

  /// A description for eaw
  final String eaw;

  /// A description for eweawewaa
  final String eweawewaa;

  /// A description for wae
  final String wae;

  /// A description for awe
  final String awe;

  /// A description for ewa
  final String ewa;

  /// A description for ewa
  final String ewa;

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
    String? one,
    String? two,
    String? awe,
    String? owaeawne,
    String? eawe,
    String? awaeaw,
    String? waeaw,
    String? oeaweawne,
    String? aweaw,
    String? eaw,
    String? eaw,
    String? eweawewaa,
    String? wae,
    String? awe,
    String? ewa,
    String? ewa,
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
      one: one ?? this.one,
      two: two ?? this.two,
      awe: awe ?? this.awe,
      owaeawne: owaeawne ?? this.owaeawne,
      eawe: eawe ?? this.eawe,
      awaeaw: awaeaw ?? this.awaeaw,
      waeaw: waeaw ?? this.waeaw,
      oeaweawne: oeaweawne ?? this.oeaweawne,
      aweaw: aweaw ?? this.aweaw,
      eaw: eaw ?? this.eaw,
      eaw: eaw ?? this.eaw,
      eweawewaa: eweawewaa ?? this.eweawewaa,
      wae: wae ?? this.wae,
      awe: awe ?? this.awe,
      ewa: ewa ?? this.ewa,
      ewa: ewa ?? this.ewa,
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
        one,
        two,
        awe,
        owaeawne,
        eawe,
        awaeaw,
        waeaw,
        oeaweawne,
        aweaw,
        eaw,
        eaw,
        eweawewaa,
        wae,
        awe,
        ewa,
        ewa,
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
        'one': one,
        'two': two,
        'awe': awe,
        'owaeawne': owaeawne,
        'eawe': eawe,
        'awaeaw': awaeaw,
        'waeaw': waeaw,
        'oeaweawne': oeaweawne,
        'aweaw': aweaw,
        'eaw': eaw,
        'eaw': eaw,
        'eweawewaa': eweawewaa,
        'wae': wae,
        'awe': awe,
        'ewa': ewa,
        'ewa': ewa,
        'romeu': romeu,
      };

    /// Creates a toString() override for User
  @override
  String toString() => 'User(firstName: $firstName, lastName: $lastName, age: $age, isHappy: $isHappy, favouriteNumber: $favouriteNumber, nicknames: $nicknames, countriesVisited: $countriesVisited, friends: $friends, one: $one, two: $two, awe: $awe, owaeawne: $owaeawne, eawe: $eawe, awaeaw: $awaeaw, waeaw: $waeaw, oeaweawne: $oeaweawne, aweaw: $aweaw, eaw: $eaw, eaw: $eaw, eweawewaa: $eweawewaa, wae: $wae, awe: $awe, ewa: $ewa, ewa: $ewa, romeu: $romeu)';
}
