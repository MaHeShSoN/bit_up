import 'package:equatable/equatable.dart';

class EventEntity extends Equatable {
  final String eventId;
  final String title;
  final String description;
  final DateTime date;
  final String location;
  final String imageUrl;
  final String createdBy;
  final List<String> rsvps;

  const EventEntity({
    required this.eventId,
    required this.title,
    required this.description,
    required this.date,
    required this.location,
    required this.imageUrl,
    required this.createdBy,
    required this.rsvps,
  });

  @override
  List<Object> get props => [eventId, title, description, date, location, imageUrl, createdBy, rsvps];

  void operator [](String other) {}
}
