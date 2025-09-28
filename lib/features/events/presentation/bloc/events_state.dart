import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/event.dart';
import '../../../../core/error/failures.dart';

part 'events_state.freezed.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState.initial() = _Initial;
  const factory EventsState.loading() = _Loading;
  const factory EventsState.eventsLoaded(List<EventEntity> events) = _EventsLoaded;
  const factory EventsState.eventLoaded(EventEntity event) = _EventLoaded;
  const factory EventsState.rsvpSuccess() = _RsvpSuccess;
  const factory EventsState.rsvpCancelled() = _RsvpCancelled;
  const factory EventsState.rsvpStatus(bool isRsvped) = _RsvpStatus;
  const factory EventsState.error(Failure failure) = _Error;
}
