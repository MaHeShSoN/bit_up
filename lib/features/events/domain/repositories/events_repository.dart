import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/event.dart';

abstract class EventsRepository {
  ResultFuture<List<EventEntity>> getEvents();
  ResultFuture<EventEntity> getEventById(String eventId);
  ResultVoid rsvpToEvent(String eventId, String userId);
  ResultVoid cancelRsvp(String eventId, String userId);
  ResultFuture<bool> isUserRsvped(String eventId, String userId);
}
