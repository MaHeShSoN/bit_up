import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/entities/comment.dart';
import '../../domain/repositories/comments_repository.dart';
import '../datasources/comments_remote_data_source.dart';
import '../models/comment_model.dart';

class CommentsRepositoryImpl implements CommentsRepository {
  final CommentsRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  CommentsRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Stream<ResultFuture<List<CommentEntity>>> getComments(String eventId) async* {
    if (!(await networkInfo.isConnected)) {
      yield Future.value(const Left<Failure, List<CommentEntity>>(NetworkFailure('No internet connection')));
      return;
    }

    yield* remoteDataSource.getComments(eventId).map((comments) {
      return Future.value(Right<Failure, List<CommentEntity>>(comments.map((c) => c.toEntity()).toList()));
    }).handleError((error) {
      return Future.value(Left<Failure, List<CommentEntity>>(ServerFailure(error.toString())));
    });
  }

  @override
  ResultVoid postComment(String eventId, CommentEntity comment) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.postComment(eventId, CommentModel.fromEntity(comment));
        return const Right(null);
      } catch (e) {
        return Left<Failure, void>(ServerFailure(e.toString()));
      }
    } else {
      return const Left<Failure, void>(NetworkFailure('No internet connection'));
    }
  }
}