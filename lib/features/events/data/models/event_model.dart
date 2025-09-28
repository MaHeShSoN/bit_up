import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/event.dart';

part 'event_model.g.dart';

@JsonSerializable()
class EventModel {
  final String eventId;
  final String title;
  final String description;
  final String date;
  final String location;
  final String imageUrl;
  final String createdBy;
  final List<String> rsvps;

  const EventModel({
    required this.eventId,
    required this.title,
    required this.description,
    required this.date,
    required this.location,
    required this.imageUrl,
    required this.createdBy,
    required this.rsvps,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);

  factory EventModel.fromEntity(EventEntity entity) {
    return EventModel(
      eventId: entity.eventId,
      title: entity.title,
      description: entity.description,
      date: entity.date.toIso8601String(),
      location: entity.location,
      imageUrl: entity.imageUrl,
      createdBy: entity.createdBy,
      rsvps: entity.rsvps,
    );
  }

  EventEntity toEntity() {
    return EventEntity(
      eventId: eventId,
      title: title,
      description: description,
      date: DateTime.parse(date),
      location: location,
      imageUrl: imageUrl,
      createdBy: createdBy,
      rsvps: rsvps,
    );
  }
}