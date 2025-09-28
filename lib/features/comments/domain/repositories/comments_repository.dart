import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/comment.dart';

abstract class CommentsRepository {
  Stream<ResultFuture<List<CommentEntity>>> getComments(String eventId);
  ResultVoid postComment(String eventId, CommentEntity comment);
}
