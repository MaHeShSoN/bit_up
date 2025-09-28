import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/comment.dart';
import '../../domain/usecases/get_comments.dart';
import '../../domain/usecases/post_comment.dart';
import 'comments_event.dart';
import 'comments_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final GetComments getComments;
  final PostComment postComment;

  CommentsBloc({
    required this.getComments,
    required this.postComment,
  }) : super(const CommentsState.initial()) {
    on<CommentsEvent>((event, emit) async {
      await event.when(
        getComments: (eventId) => _onGetComments(eventId, emit),
        postComment: (eventId, comment) => _onPostComment(eventId, comment, emit),
      );
    });
  }

  Future<void> _onGetComments(String eventId, Emitter<CommentsState> emit) async {
    emit(const CommentsState.loading());
    await for (final resultFuture in getComments(eventId)) {
      final result = await resultFuture;
      result.fold(
        (failure) => emit(CommentsState.error(failure)),
        (comments) => emit(CommentsState.commentsLoaded(comments)),
      );
    }
  }

  Future<void> _onPostComment(String eventId, CommentEntity comment, Emitter<CommentsState> emit) async {
    final result = await postComment(eventId, comment);
    result.fold(
      (failure) => emit(CommentsState.error(failure)),
      (_) => emit(const CommentsState.commentPosted()),
    );
  }
}
