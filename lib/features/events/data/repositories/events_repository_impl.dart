import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/entities/event.dart';
import '../../domain/repositories/events_repository.dart';
import '../datasources/events_remote_data_source.dart';
import '../models/event_model.dart';

class EventsRepositoryImpl implements EventsRepository {
  final EventsRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  EventsRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  ResultFuture<List<EventEntity>> getEvents() async {
    if (await networkInfo.isConnected) {
      try {
        final events = await remoteDataSource.getEvents();
        return Right(events.map((e) => e.toEntity()).toList());
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      return const Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  ResultFuture<EventEntity> getEventById(String eventId) async {
    if (await networkInfo.isConnected) {
      try {
        final event = await remoteDataSource.getEventById(eventId);
        return Right(event.toEntity());
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      return const Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  ResultVoid rsvpToEvent(String eventId, String userId) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.rsvpToEvent(eventId, userId);
        return const Right(null);
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      return const Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  ResultVoid cancelRsvp(String eventId, String userId) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.cancelRsvp(eventId, userId);
        return const Right(null);
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      return const Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  ResultFuture<bool> isUserRsvped(String eventId, String userId) async {
    if (await networkInfo.isConnected) {
      try {
        final isRsvped = await remoteDataSource.isUserRsvped(eventId, userId);
        return Right(isRsvped);
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      return const Left(NetworkFailure('No internet connection'));
    }
  }
}