import 'package:equatable/equatable.dart';


base class Person extends Equatable {
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


  final int id;

  final String firstName;

  final String lastName;

  final int age;

  final bool isHappy;

  final int favouriteNumber;

  final List<String> nicknames;

  final List<String> countriesVisited;

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
