import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_events.dart';
import '../../domain/usecases/get_event_by_id.dart';
import '../../domain/usecases/rsvp_to_event.dart';
import '../../domain/usecases/cancel_rsvp.dart';
import '../../domain/usecases/is_user_rsvped.dart';
import '../../../../core/error/failures.dart';
import 'events_event.dart';
import 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final GetEvents getEvents;
  final GetEventById getEventById;
  final RsvpToEvent rsvpToEvent;
  final CancelRsvp cancelRsvp;
  final IsUserRsvped isUserRsvped;

  EventsBloc({
    required this.getEvents,
    required this.getEventById,
    required this.rsvpToEvent,
    required this.cancelRsvp,
    required this.isUserRsvped,
  }) : super(const EventsState.initial()) {
    on<EventsEvent>((event, emit) async {
      await event.when(
        getEvents: () => _onGetEvents(emit),
        getEventById: (eventId) => _onGetEventById(eventId, emit),
        rsvpToEvent: (eventId, userId) => _onRsvpToEvent(eventId, userId, emit),
        cancelRsvp: (eventId, userId) => _onCancelRsvp(eventId, userId, emit),
        checkRsvpStatus: (eventId, userId) => _onCheckRsvpStatus(eventId, userId, emit),
      );
    });
  }

  Future<void> _onGetEvents(Emitter<EventsState> emit) async {
    print('🔍 EventsBloc: Starting to fetch events...');
    if (!emit.isDone) emit(const EventsState.loading());
    try {
      print('🔍 EventsBloc: Calling getEvents use case...');
      final result = await getEvents();
      print('🔍 EventsBloc: Got result from getEvents: $result');
      
      if (emit.isDone) {
        print('⚠️ EventsBloc: Emit is done, skipping result processing');
        return;
      }
      
      result.fold(
        (failure) {
          print('❌ EventsBloc: Error fetching events: ${failure.message}');
          if (!emit.isDone) emit(EventsState.error(failure));
        },
        (events) {
          print('✅ EventsBloc: Successfully fetched ${events.length} events');
          for (var event in events) {
            print('   - Event: ${event.title} (${event.eventId})');
          }
          if (!emit.isDone) emit(EventsState.eventsLoaded(events));
        },
      );
    } catch (e) {
      print('💥 EventsBloc: Exception while fetching events: $e');
      if (!emit.isDone) emit(EventsState.error(ServerFailure(e.toString())));
    }
  }

  Future<void> _onGetEventById(String eventId, Emitter<EventsState> emit) async {
    if (!emit.isDone) emit(const EventsState.loading());
    final result = await getEventById(eventId);
    if (emit.isDone) return;
    result.fold(
      (failure) => emit.isDone ? null : emit(EventsState.error(failure)),
      (event) => emit.isDone ? null : emit(EventsState.eventLoaded(event)),
    );
  }

  Future<void> _onRsvpToEvent(String eventId, String userId, Emitter<EventsState> emit) async {
    final result = await rsvpToEvent(eventId, userId);
    if (emit.isDone) return;
    result.fold(
      (failure) => emit.isDone ? null : emit(EventsState.error(failure)),
      (_) => emit.isDone ? null : emit(const EventsState.rsvpSuccess()),
    );
  }

  Future<void> _onCancelRsvp(String eventId, String userId, Emitter<EventsState> emit) async {
    final result = await cancelRsvp(eventId, userId);
    if (emit.isDone) return;
    result.fold(
      (failure) => emit.isDone ? null : emit(EventsState.error(failure)),
      (_) => emit.isDone ? null : emit(const EventsState.rsvpCancelled()),
    );
  }

  Future<void> _onCheckRsvpStatus(String eventId, String userId, Emitter<EventsState> emit) async {
    final result = await isUserRsvped(eventId, userId);
    if (emit.isDone) return;
    result.fold(
      (failure) => emit.isDone ? null : emit(EventsState.error(failure)),
      (isRsvped) => emit.isDone ? null : emit(EventsState.rsvpStatus(isRsvped)),
    );
  }

}
