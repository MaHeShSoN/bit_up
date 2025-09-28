import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/comment.dart';
import '../repositories/comments_repository.dart';

class GetComments {
  final CommentsRepository repository;

  GetComments(this.repository);

  Stream<ResultFuture<List<CommentEntity>>> call(String eventId) {
    return repository.getComments(eventId);
  }
}
