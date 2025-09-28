import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../repositories/events_repository.dart';

class IsUserRsvped {
  final EventsRepository repository;

  IsUserRsvped(this.repository);

  ResultFuture<bool> call(String eventId, String userId) async {
    return await repository.isUserRsvped(eventId, userId);
  }
}
