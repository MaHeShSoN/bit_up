import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import '../bloc/events_bloc.dart';
import '../bloc/events_event.dart';
import '../bloc/events_state.dart';
import '../widgets/event_card.dart';
import '../../../../features/auth/presentation/pages/login_page.dart';
import '../../../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../../../features/auth/presentation/bloc/auth_event.dart';
import '../../../../features/auth/presentation/bloc/auth_state.dart';
import '../../../../features/profile/presentation/pages/profile_page.dart';
import '../../domain/entities/event.dart';
import 'event_details_page.dart';
import '../../../../core/di/injection_container.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // Load events from Firestore after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<EventsBloc>().add(const EventsEvent.getEvents());
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthUnauthenticated) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const LoginPage()),
          );
        }
      },
      child: Scaffold(
      appBar: AppBar(
        title: const Text('Foodie Meetups'),
        backgroundColor: const Color(0xFFE91E63),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(const SignOutEvent());
            },
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          _buildEventsTab(),
          const ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color(0xFFE91E63),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      ),
    );
  }

  Widget _buildEventsTab() {
    return BlocBuilder<EventsBloc, EventsState>(
      builder: (context, state) {
        print('🔍 EventsPage: Current state: $state');
        return state.when(
          initial: () => const Center(
            child: Text('No events loaded yet'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          eventsLoaded: (events) => RefreshIndicator(
            onRefresh: () async {
              context.read<EventsBloc>().add(const EventsEvent.getEvents());
            },
            child: events.isEmpty
                ? const Center(
                    child: Text('No events available'),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: events.length,
                    itemBuilder: (context, index) {
                      final event = events[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: EventCard(
                          event: event,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => BlocProvider(
                                  create: (context) => getIt<EventsBloc>(),
                                  child: EventDetailsPage(eventId: event.eventId),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
          ),
          eventLoaded: (event) => const Center(
            child: Text('Single event loaded'),
          ),
          rsvpSuccess: () => const Center(
            child: Text('RSVP successful'),
          ),
          rsvpCancelled: () => const Center(
            child: Text('RSVP cancelled'),
          ),
          rsvpStatus: (isRsvped) => const Center(
            child: Text('RSVP status checked'),
          ),
          error: (failure) => Center(
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
                  'Error loading events',
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
                    context.read<EventsBloc>().add(const EventsEvent.getEvents());
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}