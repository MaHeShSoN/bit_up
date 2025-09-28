import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/comment.dart';

part 'comments_event.freezed.dart';

@freezed
class CommentsEvent with _$CommentsEvent {
  const factory CommentsEvent.getComments(String eventId) = _GetComments;
  const factory CommentsEvent.postComment(String eventId, CommentEntity comment) = _PostComment;
}
