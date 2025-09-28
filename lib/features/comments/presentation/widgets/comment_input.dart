import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/comment.dart';
import '../bloc/comments_bloc.dart';
import '../bloc/comments_event.dart';
import '../bloc/comments_state.dart';

class CommentInput extends StatefulWidget {
  final String eventId;

  const CommentInput({
    super.key,
    required this.eventId,
  });

  @override
  State<CommentInput> createState() => _CommentInputState();
}

class _CommentInputState extends State<CommentInput> {
  final TextEditingController _controller = TextEditingController();
  bool _isPosting = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CommentsBloc, CommentsState>(
      listener: (context, state) {
        state.maybeWhen(
          commentPosted: () {
            setState(() {
              _isPosting = false;
            });
            _controller.clear();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Comment posted successfully!'),
                backgroundColor: Colors.green,
              ),
            );
          },
          error: (failure) {
            setState(() {
              _isPosting = false;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(failure.message),
                backgroundColor: Colors.red,
              ),
            );
          },
          orElse: () {},
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Write a comment...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                ),
                maxLines: null,
                enabled: !_isPosting,
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: _isPosting || _controller.text.trim().isEmpty
                  ? null
                  : () {
                      setState(() {
                        _isPosting = true;
                      });
                      final comment = CommentEntity(
                        commentId: DateTime.now().millisecondsSinceEpoch.toString(),
                        userId: 'current_user_id', // This should come from auth
                        username: 'Current User', // This should come from auth
                        profilePic: '', // This should come from auth
                        message: _controller.text.trim(),
                        timestamp: DateTime.now(),
                      );
                      context.read<CommentsBloc>().add(
                        CommentsEvent.postComment(widget.eventId, comment),
                      );
                    },
              icon: _isPosting
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.send),
              color: const Color(0xFFE91E63),
            ),
          ],
        ),
      ),
    );
  }
}
