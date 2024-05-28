import 'package:equatable/equatable.dart';

/// {@template person}
/// Person description
/// {@endtemplate}
class Person extends Equatable {
  /// {@macro person}
  const Person({ 
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.isHappy,
    required this.favouriteNumber,
    required this.nicknames,
    required this.countriesVisited,
    required this.organizationId,
  });


  /// A description for id
  final int id;

  /// A description for firstName
  final String firstName;

  /// A description for lastName
  final String lastName;

  /// A description for age
  final int age;

  /// A description for isHappy
  final bool isHappy;

  /// A description for favouriteNumber
  final int favouriteNumber;

  /// A description for nicknames
  final List<String> nicknames;

  /// A description for countriesVisited
  final List<String> countriesVisited;

  /// A description for organizationId
  final String organizationId;

    /// Creates a copy of the current Person with property changes
  Person copyWith({ 
    int? id,
    String? firstName,
    String? lastName,
    int? age,
    bool? isHappy,
    int? favouriteNumber,
    List<String>? nicknames,
    List<String>? countriesVisited,
    String? organizationId,
  }) {
    return Person(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      isHappy: isHappy ?? this.isHappy,
      favouriteNumber: favouriteNumber ?? this.favouriteNumber,
      nicknames: nicknames ?? this.nicknames,
      countriesVisited: countriesVisited ?? this.countriesVisited,
      organizationId: organizationId ?? this.organizationId,
    );
  }


    @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        age,
        isHappy,
        favouriteNumber,
        nicknames,
        countriesVisited,
        organizationId,
      ];


}
