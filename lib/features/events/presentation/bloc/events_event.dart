import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_event.freezed.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.getEvents() = _GetEvents;
  const factory EventsEvent.getEventById(String eventId) = _GetEventById;
  const factory EventsEvent.rsvpToEvent(String eventId, String userId) = _RsvpToEvent;
  const factory EventsEvent.cancelRsvp(String eventId, String userId) = _CancelRsvp;
  const factory EventsEvent.checkRsvpStatus(String eventId, String userId) = _CheckRsvpStatus;
}
