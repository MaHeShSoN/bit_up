import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/comment.dart';
import '../../../../core/error/failures.dart';

part 'comments_state.freezed.dart';

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState.initial() = _Initial;
  const factory CommentsState.loading() = _Loading;
  const factory CommentsState.commentsLoaded(List<CommentEntity> comments) = _CommentsLoaded;
  const factory CommentsState.commentPosted() = _CommentPosted;
  const factory CommentsState.error(Failure failure) = _Error;
}
