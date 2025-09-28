import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/comment.dart';
import '../repositories/comments_repository.dart';

class PostComment {
  final CommentsRepository repository;

  PostComment(this.repository);

  ResultVoid call(String eventId, CommentEntity comment) async {
    return await repository.postComment(eventId, comment);
  }
}
