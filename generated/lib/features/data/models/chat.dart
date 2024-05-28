import 'package:equatable/equatable.dart';
import 'package:testando_poha/person.dart';

/// {@template chat}
/// Chat description
/// {@endtemplate}
class Chat extends Equatable {
  /// {@macro chat}
  const Chat({ 
    required this.id,
    required this.message,
    required this.sentTime,
    required this.chatImage,
    required this.isForwarded,
    required this.toUsers,
  });


  /// A description for id
  final int id;

  /// A description for message
  final String message;

  /// A description for sentTime
  final DateTime sentTime;

  /// A description for chatImage
  final String chatImage;

  /// A description for isForwarded
  final bool isForwarded;

  /// A description for toUsers
  final List<Person> toUsers;

    /// Creates a copy of the current Chat with property changes
  Chat copyWith({ 
    int? id,
    String? message,
    DateTime? sentTime,
    String? chatImage,
    bool? isForwarded,
    List<Person>? toUsers,
  }) {
    return Chat(
      id: id ?? this.id,
      message: message ?? this.message,
      sentTime: sentTime ?? this.sentTime,
      chatImage: chatImage ?? this.chatImage,
      isForwarded: isForwarded ?? this.isForwarded,
      toUsers: toUsers ?? this.toUsers,
    );
  }


    @override
  List<Object?> get props => [
        id,
        message,
        sentTime,
        chatImage,
        isForwarded,
        toUsers,
      ];


}
