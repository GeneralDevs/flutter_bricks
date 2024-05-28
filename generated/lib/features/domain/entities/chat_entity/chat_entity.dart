import 'package:equatable/equatable.dart';
import 'package:testando_poha/person.dart';


base class ChatEntity extends Equatable {
  const ChatEntity({ 
    required this.id,
    required this.message,
    required this.sentTime,
    required this.chatImage,
    required this.isForwarded,
    required this.toUsers,
  });


  final int id;

  final String message;

  final DateTime sentTime;

  final String chatImage;

  final bool isForwarded;

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
