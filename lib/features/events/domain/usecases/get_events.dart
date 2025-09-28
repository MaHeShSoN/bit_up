import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/event.dart';
import '../repositories/events_repository.dart';

class GetEvents {
  final EventsRepository repository;

  GetEvents(this.repository);

  ResultFuture<List<EventEntity>> call() async {
    return await repository.getEvents();
  }
}
