import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../bloc/events_bloc.dart';
import '../bloc/events_event.dart';
import '../bloc/events_state.dart';
import '../../../../core/di/injection_container.dart';
import '../../../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../../../features/auth/presentation/bloc/auth_state.dart';

class EventDetailsPage extends StatefulWidget {
  final String eventId;

  const EventDetailsPage({
    super.key,
    required this.eventId,
  });

  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  bool _isRsvped = false;
  bool _isLoadingRsvp = false;
  dynamic _currentEvent; // Store the current event data

  @override
  void initState() {
    super.initState();
    // Load event details from Firestore after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<EventsBloc>().add(EventsEvent.getEventById(widget.eventId));
      }
    });
  }

  Widget _buildRsvpButton(BuildContext context, String userId, event) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: _isLoadingRsvp ? null : () => _handleRsvp(context, userId, event),
        icon: _isLoadingRsvp 
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
              )
            : Icon(_isRsvped ? Icons.event_busy : Icons.event_available),
        label: Text(_isRsvped ? 'Not Going' : 'Going'),
        style: ElevatedButton.styleFrom(
          backgroundColor: _isRsvped ? Colors.grey : const Color(0xFFE91E63),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }

  Future<void> _handleRsvp(BuildContext context, String userId, event) async {
    setState(() {
      _isLoadingRsvp = true;
    });

    try {
      if (_isRsvped) {
        // Cancel RSVP
        context.read<EventsBloc>().add(EventsEvent.cancelRsvp(widget.eventId, userId));
      } else {
        // RSVP to event
        context.read<EventsBloc>().add(EventsEvent.rsvpToEvent(widget.eventId, userId));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoadingRsvp = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventsBloc, EventsState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          eventsLoaded: (events) {},
          eventLoaded: (event) {},
          rsvpSuccess: () {
            setState(() {
              _isRsvped = true;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('You are now going to this event!'),
                backgroundColor: Colors.green,
              ),
            );
          },
          rsvpCancelled: () {
            setState(() {
              _isRsvped = false;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('You are no longer going to this event.'),
                backgroundColor: Colors.orange,
              ),
            );
          },
          rsvpStatus: (isRsvped) {
            setState(() {
              _isRsvped = isRsvped;
            });
          },
          error: (failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: ${failure.message}'),
                backgroundColor: Colors.red,
              ),
            );
          },
        );
      },
      child: BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
        return state.when(
          initial: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          loading: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          eventsLoaded: (events) => const Scaffold(
            body: Center(child: Text('Events loaded but expecting single event')),
          ),
          eventLoaded: (event) {
            // Store the event data
            _currentEvent = event;
            // Check RSVP status when event loads
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted) {
                final authState = context.read<AuthBloc>().state;
                if (authState is AuthAuthenticated) {
                  context.read<EventsBloc>().add(EventsEvent.checkRsvpStatus(widget.eventId, authState.user.uid));
                }
              }
            });
            return _buildEventDetails(event);
          },
          rsvpSuccess: () {
            // Show event details after successful RSVP
            if (_currentEvent != null) {
              return _buildEventDetails(_currentEvent);
            }
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          },
          rsvpCancelled: () {
            // Show event details after cancelled RSVP
            if (_currentEvent != null) {
              return _buildEventDetails(_currentEvent);
            }
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          },
          rsvpStatus: (isRsvped) {
            // Update RSVP status and show event details if we have them
            if (_currentEvent != null) {
              return _buildEventDetails(_currentEvent);
            }
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          },
          error: (failure) => Scaffold(
            appBar: AppBar(
              title: const Text('Event Details'),
              backgroundColor: const Color(0xFFE91E63),
              foregroundColor: Colors.white,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Error loading event',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    failure.message,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<EventsBloc>().add(EventsEvent.getEventById(widget.eventId));
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      ),
    );
  }

  Widget _buildEventDetails(event) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
        backgroundColor: const Color(0xFFE91E63),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Event Image
            AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                imageUrl: event.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: Colors.grey[300],
                  child: const Center(child: CircularProgressIndicator()),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[300],
                  child: const Icon(
                    Icons.image_not_supported,
                    size: 64,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            // Event Details
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        color: Color(0xFFE91E63),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        DateFormat('EEEE, MMMM dd, yyyy • HH:mm').format(event.date),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          event.location,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(
                        Icons.people,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${event.rsvps.length} people going',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'About this event',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    event.description,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 24),
                  // RSVP Status Display
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: _isRsvped ? Colors.green.withOpacity(0.1) : Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: _isRsvped ? Colors.green : Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          _isRsvped ? Icons.check_circle : Icons.radio_button_unchecked,
                          color: _isRsvped ? Colors.green : Colors.grey,
                          size: 24,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          _isRsvped ? 'You are going to this event' : 'You are not going to this event',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _isRsvped ? Colors.green[700] : Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  // RSVP Button
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, authState) {
                      if (authState is AuthAuthenticated) {
                        return _buildRsvpButton(context, authState.user.uid, event);
                      }
                      return const SizedBox();
                    },
                  ),
                  const SizedBox(height: 32),
                  // Comments Section
                  const Text(
                    'Comments',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildCommentInput(),
                  const SizedBox(height: 16),
                  _buildCommentsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommentInput() {
    final TextEditingController controller = TextEditingController();
    
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        if (authState is AuthAuthenticated) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Write a comment...',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
              maxLines: null,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {
              if (controller.text.trim().isNotEmpty) {
                      _postComment(context, authState.user.uid, authState.user.name, authState.user.profilePic ?? '', controller.text.trim());
                controller.clear();
              }
            },
            icon: const Icon(Icons.send),
            color: const Color(0xFFE91E63),
          ),
        ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }

  void _postComment(BuildContext context, String userId, String username, String profilePic, String message) {
    // TODO: Implement comment posting with CommentsBloc
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Comment posted successfully!'),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget _buildCommentsList() {
    final comments = [
      {
        'username': 'John Doe',
        'profilePic': 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150&h=150&fit=crop&crop=face',
        'message': 'Can\'t wait for this event! I\'ve been looking forward to trying some authentic street food.',
        'timestamp': DateTime.now().subtract(const Duration(hours: 2)),
      },
      {
        'username': 'Jane Smith',
        'profilePic': 'https://images.unsplash.com/photo-1494790108755-2616b612b786?w=150&h=150&fit=crop&crop=face',
        'message': 'This is going to be amazing! I\'ll be bringing my camera to capture all the delicious moments.',
        'timestamp': DateTime.now().subtract(const Duration(hours: 1)),
      },
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final comment = comments[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: CachedNetworkImageProvider(comment['profilePic'] as String),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          comment['username'] as String,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          DateFormat('MMM dd, HH:mm').format(comment['timestamp'] as DateTime),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      comment['message'] as String,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
