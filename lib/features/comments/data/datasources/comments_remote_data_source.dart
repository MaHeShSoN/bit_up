import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/comment_model.dart';

abstract class CommentsRemoteDataSource {
  Stream<List<CommentModel>> getComments(String eventId);
  Future<void> postComment(String eventId, CommentModel comment);
}

class CommentsRemoteDataSourceImpl implements CommentsRemoteDataSource {
  final FirebaseFirestore firestore;

  CommentsRemoteDataSourceImpl({required this.firestore});

  @override
  Stream<List<CommentModel>> getComments(String eventId) {
    return firestore
        .collection('comments')
        .where('eventId', isEqualTo: eventId)
        .orderBy('timestamp')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => CommentModel.fromJson(doc.data()))
          .toList();
    });
  }

  @override
  Future<void> postComment(String eventId, CommentModel comment) async {
    try {
      await firestore
          .collection('comments')
          .doc(comment.commentId)
          .set(comment.toJson());
    } catch (e) {
      throw Exception('Failed to post comment: $e');
    }
  }
}
