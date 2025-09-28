// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(String eventId) getEventById,
    required TResult Function(String eventId, String userId) rsvpToEvent,
    required TResult Function(String eventId, String userId) cancelRsvp,
    required TResult Function(String eventId, String userId) checkRsvpStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(String eventId)? getEventById,
    TResult? Function(String eventId, String userId)? rsvpToEvent,
    TResult? Function(String eventId, String userId)? cancelRsvp,
    TResult? Function(String eventId, String userId)? checkRsvpStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(String eventId)? getEventById,
    TResult Function(String eventId, String userId)? rsvpToEvent,
    TResult Function(String eventId, String userId)? cancelRsvp,
    TResult Function(String eventId, String userId)? checkRsvpStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_GetEventById value) getEventById,
    required TResult Function(_RsvpToEvent value) rsvpToEvent,
    required TResult Function(_CancelRsvp value) cancelRsvp,
    required TResult Function(_CheckRsvpStatus value) checkRsvpStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_GetEventById value)? getEventById,
    TResult? Function(_RsvpToEvent value)? rsvpToEvent,
    TResult? Function(_CancelRsvp value)? cancelRsvp,
    TResult? Function(_CheckRsvpStatus value)? checkRsvpStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_GetEventById value)? getEventById,
    TResult Function(_RsvpToEvent value)? rsvpToEvent,
    TResult Function(_CancelRsvp value)? cancelRsvp,
    TResult Function(_CheckRsvpStatus value)? checkRsvpStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res, EventsEvent>;
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res, $Val extends EventsEvent>
    implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetEventsImplCopyWith<$Res> {
  factory _$$GetEventsImplCopyWith(
          _$GetEventsImpl value, $Res Function(_$GetEventsImpl) then) =
      __$$GetEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEventsImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$GetEventsImpl>
    implements _$$GetEventsImplCopyWith<$Res> {
  __$$GetEventsImplCopyWithImpl(
      _$GetEventsImpl _value, $Res Function(_$GetEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetEventsImpl implements _GetEvents {
  const _$GetEventsImpl();

  @override
  String toString() {
    return 'EventsEvent.getEvents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(String eventId) getEventById,
    required TResult Function(String eventId, String userId) rsvpToEvent,
    required TResult Function(String eventId, String userId) cancelRsvp,
    required TResult Function(String eventId, String userId) checkRsvpStatus,
  }) {
    return getEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(String eventId)? getEventById,
    TResult? Function(String eventId, String userId)? rsvpToEvent,
    TResult? Function(String eventId, String userId)? cancelRsvp,
    TResult? Function(String eventId, String userId)? checkRsvpStatus,
  }) {
    return getEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(String eventId)? getEventById,
    TResult Function(String eventId, String userId)? rsvpToEvent,
    TResult Function(String eventId, String userId)? cancelRsvp,
    TResult Function(String eventId, String userId)? checkRsvpStatus,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_GetEventById value) getEventById,
    required TResult Function(_RsvpToEvent value) rsvpToEvent,
    required TResult Function(_CancelRsvp value) cancelRsvp,
    required TResult Function(_CheckRsvpStatus value) checkRsvpStatus,
  }) {
    return getEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_GetEventById value)? getEventById,
    TResult? Function(_RsvpToEvent value)? rsvpToEvent,
    TResult? Function(_CancelRsvp value)? cancelRsvp,
    TResult? Function(_CheckRsvpStatus value)? checkRsvpStatus,
  }) {
    return getEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_GetEventById value)? getEventById,
    TResult Function(_RsvpToEvent value)? rsvpToEvent,
    TResult Function(_CancelRsvp value)? cancelRsvp,
    TResult Function(_CheckRsvpStatus value)? checkRsvpStatus,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(this);
    }
    return orElse();
  }
}

abstract class _GetEvents implements EventsEvent {
  const factory _GetEvents() = _$GetEventsImpl;
}

/// @nodoc
abstract class _$$GetEventByIdImplCopyWith<$Res> {
  factory _$$GetEventByIdImplCopyWith(
          _$GetEventByIdImpl value, $Res Function(_$GetEventByIdImpl) then) =
      __$$GetEventByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$GetEventByIdImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$GetEventByIdImpl>
    implements _$$GetEventByIdImplCopyWith<$Res> {
  __$$GetEventByIdImplCopyWithImpl(
      _$GetEventByIdImpl _value, $Res Function(_$GetEventByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$GetEventByIdImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetEventByIdImpl implements _GetEventById {
  const _$GetEventByIdImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'EventsEvent.getEventById(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventByIdImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventByIdImplCopyWith<_$GetEventByIdImpl> get copyWith =>
      __$$GetEventByIdImplCopyWithImpl<_$GetEventByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(String eventId) getEventById,
    required TResult Function(String eventId, String userId) rsvpToEvent,
    required TResult Function(String eventId, String userId) cancelRsvp,
    required TResult Function(String eventId, String userId) checkRsvpStatus,
  }) {
    return getEventById(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(String eventId)? getEventById,
    TResult? Function(String eventId, String userId)? rsvpToEvent,
    TResult? Function(String eventId, String userId)? cancelRsvp,
    TResult? Function(String eventId, String userId)? checkRsvpStatus,
  }) {
    return getEventById?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(String eventId)? getEventById,
    TResult Function(String eventId, String userId)? rsvpToEvent,
    TResult Function(String eventId, String userId)? cancelRsvp,
    TResult Function(String eventId, String userId)? checkRsvpStatus,
    required TResult orElse(),
  }) {
    if (getEventById != null) {
      return getEventById(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_GetEventById value) getEventById,
    required TResult Function(_RsvpToEvent value) rsvpToEvent,
    required TResult Function(_CancelRsvp value) cancelRsvp,
    required TResult Function(_CheckRsvpStatus value) checkRsvpStatus,
  }) {
    return getEventById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_GetEventById value)? getEventById,
    TResult? Function(_RsvpToEvent value)? rsvpToEvent,
    TResult? Function(_CancelRsvp value)? cancelRsvp,
    TResult? Function(_CheckRsvpStatus value)? checkRsvpStatus,
  }) {
    return getEventById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_GetEventById value)? getEventById,
    TResult Function(_RsvpToEvent value)? rsvpToEvent,
    TResult Function(_CancelRsvp value)? cancelRsvp,
    TResult Function(_CheckRsvpStatus value)? checkRsvpStatus,
    required TResult orElse(),
  }) {
    if (getEventById != null) {
      return getEventById(this);
    }
    return orElse();
  }
}

abstract class _GetEventById implements EventsEvent {
  const factory _GetEventById(final String eventId) = _$GetEventByIdImpl;

  String get eventId;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEventByIdImplCopyWith<_$GetEventByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RsvpToEventImplCopyWith<$Res> {
  factory _$$RsvpToEventImplCopyWith(
          _$RsvpToEventImpl value, $Res Function(_$RsvpToEventImpl) then) =
      __$$RsvpToEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, String userId});
}

/// @nodoc
class __$$RsvpToEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$RsvpToEventImpl>
    implements _$$RsvpToEventImplCopyWith<$Res> {
  __$$RsvpToEventImplCopyWithImpl(
      _$RsvpToEventImpl _value, $Res Function(_$RsvpToEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$RsvpToEventImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RsvpToEventImpl implements _RsvpToEvent {
  const _$RsvpToEventImpl(this.eventId, this.userId);

  @override
  final String eventId;
  @override
  final String userId;

  @override
  String toString() {
    return 'EventsEvent.rsvpToEvent(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RsvpToEventImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RsvpToEventImplCopyWith<_$RsvpToEventImpl> get copyWith =>
      __$$RsvpToEventImplCopyWithImpl<_$RsvpToEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(String eventId) getEventById,
    required TResult Function(String eventId, String userId) rsvpToEvent,
    required TResult Function(String eventId, String userId) cancelRsvp,
    required TResult Function(String eventId, String userId) checkRsvpStatus,
  }) {
    return rsvpToEvent(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(String eventId)? getEventById,
    TResult? Function(String eventId, String userId)? rsvpToEvent,
    TResult? Function(String eventId, String userId)? cancelRsvp,
    TResult? Function(String eventId, String userId)? checkRsvpStatus,
  }) {
    return rsvpToEvent?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(String eventId)? getEventById,
    TResult Function(String eventId, String userId)? rsvpToEvent,
    TResult Function(String eventId, String userId)? cancelRsvp,
    TResult Function(String eventId, String userId)? checkRsvpStatus,
    required TResult orElse(),
  }) {
    if (rsvpToEvent != null) {
      return rsvpToEvent(eventId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_GetEventById value) getEventById,
    required TResult Function(_RsvpToEvent value) rsvpToEvent,
    required TResult Function(_CancelRsvp value) cancelRsvp,
    required TResult Function(_CheckRsvpStatus value) checkRsvpStatus,
  }) {
    return rsvpToEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_GetEventById value)? getEventById,
    TResult? Function(_RsvpToEvent value)? rsvpToEvent,
    TResult? Function(_CancelRsvp value)? cancelRsvp,
    TResult? Function(_CheckRsvpStatus value)? checkRsvpStatus,
  }) {
    return rsvpToEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_GetEventById value)? getEventById,
    TResult Function(_RsvpToEvent value)? rsvpToEvent,
    TResult Function(_CancelRsvp value)? cancelRsvp,
    TResult Function(_CheckRsvpStatus value)? checkRsvpStatus,
    required TResult orElse(),
  }) {
    if (rsvpToEvent != null) {
      return rsvpToEvent(this);
    }
    return orElse();
  }
}

abstract class _RsvpToEvent implements EventsEvent {
  const factory _RsvpToEvent(final String eventId, final String userId) =
      _$RsvpToEventImpl;

  String get eventId;
  String get userId;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RsvpToEventImplCopyWith<_$RsvpToEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelRsvpImplCopyWith<$Res> {
  factory _$$CancelRsvpImplCopyWith(
          _$CancelRsvpImpl value, $Res Function(_$CancelRsvpImpl) then) =
      __$$CancelRsvpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, String userId});
}

/// @nodoc
class __$$CancelRsvpImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$CancelRsvpImpl>
    implements _$$CancelRsvpImplCopyWith<$Res> {
  __$$CancelRsvpImplCopyWithImpl(
      _$CancelRsvpImpl _value, $Res Function(_$CancelRsvpImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$CancelRsvpImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelRsvpImpl implements _CancelRsvp {
  const _$CancelRsvpImpl(this.eventId, this.userId);

  @override
  final String eventId;
  @override
  final String userId;

  @override
  String toString() {
    return 'EventsEvent.cancelRsvp(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelRsvpImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelRsvpImplCopyWith<_$CancelRsvpImpl> get copyWith =>
      __$$CancelRsvpImplCopyWithImpl<_$CancelRsvpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(String eventId) getEventById,
    required TResult Function(String eventId, String userId) rsvpToEvent,
    required TResult Function(String eventId, String userId) cancelRsvp,
    required TResult Function(String eventId, String userId) checkRsvpStatus,
  }) {
    return cancelRsvp(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(String eventId)? getEventById,
    TResult? Function(String eventId, String userId)? rsvpToEvent,
    TResult? Function(String eventId, String userId)? cancelRsvp,
    TResult? Function(String eventId, String userId)? checkRsvpStatus,
  }) {
    return cancelRsvp?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(String eventId)? getEventById,
    TResult Function(String eventId, String userId)? rsvpToEvent,
    TResult Function(String eventId, String userId)? cancelRsvp,
    TResult Function(String eventId, String userId)? checkRsvpStatus,
    required TResult orElse(),
  }) {
    if (cancelRsvp != null) {
      return cancelRsvp(eventId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_GetEventById value) getEventById,
    required TResult Function(_RsvpToEvent value) rsvpToEvent,
    required TResult Function(_CancelRsvp value) cancelRsvp,
    required TResult Function(_CheckRsvpStatus value) checkRsvpStatus,
  }) {
    return cancelRsvp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_GetEventById value)? getEventById,
    TResult? Function(_RsvpToEvent value)? rsvpToEvent,
    TResult? Function(_CancelRsvp value)? cancelRsvp,
    TResult? Function(_CheckRsvpStatus value)? checkRsvpStatus,
  }) {
    return cancelRsvp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_GetEventById value)? getEventById,
    TResult Function(_RsvpToEvent value)? rsvpToEvent,
    TResult Function(_CancelRsvp value)? cancelRsvp,
    TResult Function(_CheckRsvpStatus value)? checkRsvpStatus,
    required TResult orElse(),
  }) {
    if (cancelRsvp != null) {
      return cancelRsvp(this);
    }
    return orElse();
  }
}

abstract class _CancelRsvp implements EventsEvent {
  const factory _CancelRsvp(final String eventId, final String userId) =
      _$CancelRsvpImpl;

  String get eventId;
  String get userId;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelRsvpImplCopyWith<_$CancelRsvpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckRsvpStatusImplCopyWith<$Res> {
  factory _$$CheckRsvpStatusImplCopyWith(_$CheckRsvpStatusImpl value,
          $Res Function(_$CheckRsvpStatusImpl) then) =
      __$$CheckRsvpStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, String userId});
}

/// @nodoc
class __$$CheckRsvpStatusImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$CheckRsvpStatusImpl>
    implements _$$CheckRsvpStatusImplCopyWith<$Res> {
  __$$CheckRsvpStatusImplCopyWithImpl(
      _$CheckRsvpStatusImpl _value, $Res Function(_$CheckRsvpStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$CheckRsvpStatusImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckRsvpStatusImpl implements _CheckRsvpStatus {
  const _$CheckRsvpStatusImpl(this.eventId, this.userId);

  @override
  final String eventId;
  @override
  final String userId;

  @override
  String toString() {
    return 'EventsEvent.checkRsvpStatus(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckRsvpStatusImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckRsvpStatusImplCopyWith<_$CheckRsvpStatusImpl> get copyWith =>
      __$$CheckRsvpStatusImplCopyWithImpl<_$CheckRsvpStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(String eventId) getEventById,
    required TResult Function(String eventId, String userId) rsvpToEvent,
    required TResult Function(String eventId, String userId) cancelRsvp,
    required TResult Function(String eventId, String userId) checkRsvpStatus,
  }) {
    return checkRsvpStatus(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(String eventId)? getEventById,
    TResult? Function(String eventId, String userId)? rsvpToEvent,
    TResult? Function(String eventId, String userId)? cancelRsvp,
    TResult? Function(String eventId, String userId)? checkRsvpStatus,
  }) {
    return checkRsvpStatus?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(String eventId)? getEventById,
    TResult Function(String eventId, String userId)? rsvpToEvent,
    TResult Function(String eventId, String userId)? cancelRsvp,
    TResult Function(String eventId, String userId)? checkRsvpStatus,
    required TResult orElse(),
  }) {
    if (checkRsvpStatus != null) {
      return checkRsvpStatus(eventId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_GetEventById value) getEventById,
    required TResult Function(_RsvpToEvent value) rsvpToEvent,
    required TResult Function(_CancelRsvp value) cancelRsvp,
    required TResult Function(_CheckRsvpStatus value) checkRsvpStatus,
  }) {
    return checkRsvpStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_GetEventById value)? getEventById,
    TResult? Function(_RsvpToEvent value)? rsvpToEvent,
    TResult? Function(_CancelRsvp value)? cancelRsvp,
    TResult? Function(_CheckRsvpStatus value)? checkRsvpStatus,
  }) {
    return checkRsvpStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_GetEventById value)? getEventById,
    TResult Function(_RsvpToEvent value)? rsvpToEvent,
    TResult Function(_CancelRsvp value)? cancelRsvp,
    TResult Function(_CheckRsvpStatus value)? checkRsvpStatus,
    required TResult orElse(),
  }) {
    if (checkRsvpStatus != null) {
      return checkRsvpStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckRsvpStatus implements EventsEvent {
  const factory _CheckRsvpStatus(final String eventId, final String userId) =
      _$CheckRsvpStatusImpl;

  String get eventId;
  String get userId;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckRsvpStatusImplCopyWith<_$CheckRsvpStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
