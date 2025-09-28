import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/event.dart';
import '../repositories/events_repository.dart';

class GetEventById {
  final EventsRepository repository;

  GetEventById(this.repository);

  ResultFuture<EventEntity> call(String eventId) async {
    return await repository.getEventById(eventId);
  }
}
