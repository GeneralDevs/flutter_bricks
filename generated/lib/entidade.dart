import 'package:equatable/equatable.dart';
import 'package:testando_poha/user.dart';


base class Entidade extends Equatable {
  const Entidade({ 
    this.firstName,
    this.lastName,
    required this.age,
    required this.isHappy,
    required this.favouriteNumber,
    required this.nicknames,
    required this.countriesVisited,
    required this.friends,
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
        romeu,
      ];


}
