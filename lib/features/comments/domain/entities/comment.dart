import 'package:equatable/equatable.dart';

class CommentEntity extends Equatable {
  final String commentId;
  final String userId;
  final String username;
  final String profilePic;
  final String message;
  final DateTime timestamp;

  const CommentEntity({
    required this.commentId,
    required this.userId,
    required this.username,
    required this.profilePic,
    required this.message,
    required this.timestamp,
  });

  @override
  List<Object> get props => [commentId, userId, username, profilePic, message, timestamp];
}
