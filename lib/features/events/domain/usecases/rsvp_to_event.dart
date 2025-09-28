import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../repositories/events_repository.dart';

class RsvpToEvent {
  final EventsRepository repository;

  RsvpToEvent(this.repository);

  ResultVoid call(String eventId, String userId) async {
    return await repository.rsvpToEvent(eventId, userId);
  }
}
