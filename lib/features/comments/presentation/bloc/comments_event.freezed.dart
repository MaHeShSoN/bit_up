// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CommentsEvent {
  String get eventId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) getComments,
    required TResult Function(String eventId, CommentEntity comment)
    postComment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? getComments,
    TResult? Function(String eventId, CommentEntity comment)? postComment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? getComments,
    TResult Function(String eventId, CommentEntity comment)? postComment,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetComments value) getComments,
    required TResult Function(_PostComment value) postComment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetComments value)? getComments,
    TResult? Function(_PostComment value)? postComment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetComments value)? getComments,
    TResult Function(_PostComment value)? postComment,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of CommentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsEventCopyWith<CommentsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsEventCopyWith<$Res> {
  factory $CommentsEventCopyWith(
    CommentsEvent value,
    $Res Function(CommentsEvent) then,
  ) = _$CommentsEventCopyWithImpl<$Res, CommentsEvent>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class _$CommentsEventCopyWithImpl<$Res, $Val extends CommentsEvent>
    implements $CommentsEventCopyWith<$Res> {
  _$CommentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? eventId = null}) {
    return _then(
      _value.copyWith(
            eventId: null == eventId
                ? _value.eventId
                : eventId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetCommentsImplCopyWith<$Res>
    implements $CommentsEventCopyWith<$Res> {
  factory _$$GetCommentsImplCopyWith(
    _$GetCommentsImpl value,
    $Res Function(_$GetCommentsImpl) then,
  ) = __$$GetCommentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$GetCommentsImplCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res, _$GetCommentsImpl>
    implements _$$GetCommentsImplCopyWith<$Res> {
  __$$GetCommentsImplCopyWithImpl(
    _$GetCommentsImpl _value,
    $Res Function(_$GetCommentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? eventId = null}) {
    return _then(
      _$GetCommentsImpl(
        null == eventId
            ? _value.eventId
            : eventId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$GetCommentsImpl implements _GetComments {
  const _$GetCommentsImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'CommentsEvent.getComments(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentsImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  /// Create a copy of CommentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentsImplCopyWith<_$GetCommentsImpl> get copyWith =>
      __$$GetCommentsImplCopyWithImpl<_$GetCommentsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) getComments,
    required TResult Function(String eventId, CommentEntity comment)
    postComment,
  }) {
    return getComments(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? getComments,
    TResult? Function(String eventId, CommentEntity comment)? postComment,
  }) {
    return getComments?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? getComments,
    TResult Function(String eventId, CommentEntity comment)? postComment,
    required TResult orElse(),
  }) {
    if (getComments != null) {
      return getComments(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetComments value) getComments,
    required TResult Function(_PostComment value) postComment,
  }) {
    return getComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetComments value)? getComments,
    TResult? Function(_PostComment value)? postComment,
  }) {
    return getComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetComments value)? getComments,
    TResult Function(_PostComment value)? postComment,
    required TResult orElse(),
  }) {
    if (getComments != null) {
      return getComments(this);
    }
    return orElse();
  }
}

abstract class _GetComments implements CommentsEvent {
  const factory _GetComments(final String eventId) = _$GetCommentsImpl;

  @override
  String get eventId;

  /// Create a copy of CommentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCommentsImplCopyWith<_$GetCommentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostCommentImplCopyWith<$Res>
    implements $CommentsEventCopyWith<$Res> {
  factory _$$PostCommentImplCopyWith(
    _$PostCommentImpl value,
    $Res Function(_$PostCommentImpl) then,
  ) = __$$PostCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventId, CommentEntity comment});
}

/// @nodoc
class __$$PostCommentImplCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res, _$PostCommentImpl>
    implements _$$PostCommentImplCopyWith<$Res> {
  __$$PostCommentImplCopyWithImpl(
    _$PostCommentImpl _value,
    $Res Function(_$PostCommentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? eventId = null, Object? comment = null}) {
    return _then(
      _$PostCommentImpl(
        null == eventId
            ? _value.eventId
            : eventId // ignore: cast_nullable_to_non_nullable
                  as String,
        null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as CommentEntity,
      ),
    );
  }
}

/// @nodoc

class _$PostCommentImpl implements _PostComment {
  const _$PostCommentImpl(this.eventId, this.comment);

  @override
  final String eventId;
  @override
  final CommentEntity comment;

  @override
  String toString() {
    return 'CommentsEvent.postComment(eventId: $eventId, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommentImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, comment);

  /// Create a copy of CommentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentImplCopyWith<_$PostCommentImpl> get copyWith =>
      __$$PostCommentImplCopyWithImpl<_$PostCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) getComments,
    required TResult Function(String eventId, CommentEntity comment)
    postComment,
  }) {
    return postComment(eventId, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? getComments,
    TResult? Function(String eventId, CommentEntity comment)? postComment,
  }) {
    return postComment?.call(eventId, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? getComments,
    TResult Function(String eventId, CommentEntity comment)? postComment,
    required TResult orElse(),
  }) {
    if (postComment != null) {
      return postComment(eventId, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetComments value) getComments,
    required TResult Function(_PostComment value) postComment,
  }) {
    return postComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetComments value)? getComments,
    TResult? Function(_PostComment value)? postComment,
  }) {
    return postComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetComments value)? getComments,
    TResult Function(_PostComment value)? postComment,
    required TResult orElse(),
  }) {
    if (postComment != null) {
      return postComment(this);
    }
    return orElse();
  }
}

abstract class _PostComment implements CommentsEvent {
  const factory _PostComment(
    final String eventId,
    final CommentEntity comment,
  ) = _$PostCommentImpl;

  @override
  String get eventId;
  CommentEntity get comment;

  /// Create a copy of CommentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCommentImplCopyWith<_$PostCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
