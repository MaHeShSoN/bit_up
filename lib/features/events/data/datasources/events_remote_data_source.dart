import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/event_model.dart';

abstract class EventsRemoteDataSource {
  Future<List<EventModel>> getEvents();
  Future<EventModel> getEventById(String eventId);
  Future<void> rsvpToEvent(String eventId, String userId);
  Future<void> cancelRsvp(String eventId, String userId);
  Future<bool> isUserRsvped(String eventId, String userId);
}

class EventsRemoteDataSourceImpl implements EventsRemoteDataSource {
  final FirebaseFirestore firestore;

  EventsRemoteDataSourceImpl({required this.firestore});

  @override
  Future<List<EventModel>> getEvents() async {
    try {
      print('🔍 EventsRemoteDataSource: Fetching events from Firestore...');
      final querySnapshot = await firestore
          .collection('events')
          .orderBy('date', descending: false)
          .get();
      
      print('🔍 EventsRemoteDataSource: Found ${querySnapshot.docs.length} documents');
      
      final events = <EventModel>[];
      for (var doc in querySnapshot.docs) {
        try {
          print('🔍 EventsRemoteDataSource: Processing doc ${doc.id}');
          print('🔍 EventsRemoteDataSource: Doc data: ${doc.data()}');
          final event = EventModel.fromJson(doc.data());
          events.add(event);
          print('✅ EventsRemoteDataSource: Successfully parsed event: ${event.title}');
        } catch (e) {
          print('❌ EventsRemoteDataSource: Failed to parse doc ${doc.id}: $e');
          print('❌ EventsRemoteDataSource: Doc data was: ${doc.data()}');
        }
      }
      
      print('🔍 EventsRemoteDataSource: Returning ${events.length} events');
      return events;
    } catch (e) {
      print('💥 EventsRemoteDataSource: Exception: $e');
      throw Exception('Failed to fetch events: $e');
    }
  }

  @override
  Future<EventModel> getEventById(String eventId) async {
    try {
      final doc = await firestore.collection('events').doc(eventId).get();
      if (!doc.exists) {
        throw Exception('Event not found');
      }
      return EventModel.fromJson(doc.data()!);
    } catch (e) {
      throw Exception('Failed to fetch event: $e');
    }
  }

  @override
  Future<void> rsvpToEvent(String eventId, String userId) async {
    try {
      await firestore.collection('events').doc(eventId).update({
        'rsvps': FieldValue.arrayUnion([userId])
      });
    } catch (e) {
      throw Exception('Failed to RSVP to event: $e');
    }
  }

  @override
  Future<void> cancelRsvp(String eventId, String userId) async {
    try {
      await firestore.collection('events').doc(eventId).update({
        'rsvps': FieldValue.arrayRemove([userId])
      });
    } catch (e) {
      throw Exception('Failed to cancel RSVP: $e');
    }
  }

  @override
  Future<bool> isUserRsvped(String eventId, String userId) async {
    try {
      final doc = await firestore.collection('events').doc(eventId).get();
      if (!doc.exists) return false;
      
      final data = doc.data()!;
      final rsvps = List<String>.from(data['rsvps'] ?? []);
      return rsvps.contains(userId);
    } catch (e) {
      throw Exception('Failed to check RSVP status: $e');
    }
  }
}
