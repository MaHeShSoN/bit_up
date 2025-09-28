// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      commentId: json['commentId'] as String,
      userId: json['userId'] as String,
      username: json['username'] as String,
      profilePic: json['profilePic'] as String,
      message: json['message'] as String,
      timestamp: _dateTimeFromString(json['timestamp'] as String),
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'userId': instance.userId,
      'username': instance.username,
      'profilePic': instance.profilePic,
      'message': instance.message,
      'timestamp': _dateTimeToString(instance.timestamp),
    };
