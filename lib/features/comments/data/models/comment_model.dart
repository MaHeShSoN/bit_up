import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/comment.dart';

part 'comment_model.g.dart';

@JsonSerializable()
class CommentModel {
  final String commentId;
  final String userId;
  final String username;
  final String profilePic;
  final String message;
  @JsonKey(fromJson: _dateTimeFromString, toJson: _dateTimeToString)
  final DateTime timestamp;

  const CommentModel({
    required this.commentId,
    required this.userId,
    required this.username,
    required this.profilePic,
    required this.message,
    required this.timestamp,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);

  factory CommentModel.fromEntity(CommentEntity entity) {
    return CommentModel(
      commentId: entity.commentId,
      userId: entity.userId,
      username: entity.username,
      profilePic: entity.profilePic,
      message: entity.message,
      timestamp: entity.timestamp,
    );
  }

  CommentEntity toEntity() {
    return CommentEntity(
      commentId: commentId,
      userId: userId,
      username: username,
      profilePic: profilePic,
      message: message,
      timestamp: timestamp,
    );
  }
}

DateTime _dateTimeFromString(String timestamp) => DateTime.parse(timestamp);
String _dateTimeToString(DateTime timestamp) => timestamp.toIso8601String();