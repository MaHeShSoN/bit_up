import 'package:firebase_database/firebase_database.dart';
import '../models/comment_model.dart';

abstract class CommentsRemoteDataSource {
  Stream<List<CommentModel>> getComments(String eventId);
  Future<void> postComment(String eventId, CommentModel comment);
}

class CommentsRemoteDataSourceImpl implements CommentsRemoteDataSource {
  final FirebaseDatabase database;

  CommentsRemoteDataSourceImpl({required this.database});

  @override
  Stream<List<CommentModel>> getComments(String eventId) {
    return database
        .ref()
        .child('comments')
        .child(eventId)
        .orderByChild('timestamp')
        .onValue
        .map((event) {
      if (event.snapshot.value == null) return <CommentModel>[];
      
      final Map<dynamic, dynamic> data = event.snapshot.value as Map<dynamic, dynamic>;
      return data.entries
          .map((entry) => CommentModel.fromJson(Map<String, dynamic>.from(entry.value)))
          .toList();
    });
  }

  @override
  Future<void> postComment(String eventId, CommentModel comment) async {
    try {
      await database
          .ref()
          .child('comments')
          .child(eventId)
          .child(comment.commentId)
          .set(comment.toJson());
    } catch (e) {
      throw Exception('Failed to post comment: $e');
    }
  }
}
