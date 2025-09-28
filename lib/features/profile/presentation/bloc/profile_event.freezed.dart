// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserProfile,
    required TResult Function(UserProfileEntity profile) updateUserProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getUserProfile,
    TResult? Function(UserProfileEntity profile)? updateUserProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserProfile,
    TResult Function(UserProfileEntity profile)? updateUserProfile,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateUserProfile value) updateUserProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateUserProfile value)? updateUserProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateUserProfile value)? updateUserProfile,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
    ProfileEvent value,
    $Res Function(ProfileEvent) then,
  ) = _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserProfileImplCopyWith<$Res> {
  factory _$$GetUserProfileImplCopyWith(
    _$GetUserProfileImpl value,
    $Res Function(_$GetUserProfileImpl) then,
  ) = __$$GetUserProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetUserProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserProfileImpl>
    implements _$$GetUserProfileImplCopyWith<$Res> {
  __$$GetUserProfileImplCopyWithImpl(
    _$GetUserProfileImpl _value,
    $Res Function(_$GetUserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$GetUserProfileImpl(
        null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$GetUserProfileImpl implements _GetUserProfile {
  const _$GetUserProfileImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ProfileEvent.getUserProfile(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserProfileImplCopyWith<_$GetUserProfileImpl> get copyWith =>
      __$$GetUserProfileImplCopyWithImpl<_$GetUserProfileImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserProfile,
    required TResult Function(UserProfileEntity profile) updateUserProfile,
  }) {
    return getUserProfile(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getUserProfile,
    TResult? Function(UserProfileEntity profile)? updateUserProfile,
  }) {
    return getUserProfile?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserProfile,
    TResult Function(UserProfileEntity profile)? updateUserProfile,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateUserProfile value) updateUserProfile,
  }) {
    return getUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateUserProfile value)? updateUserProfile,
  }) {
    return getUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateUserProfile value)? updateUserProfile,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile(this);
    }
    return orElse();
  }
}

abstract class _GetUserProfile implements ProfileEvent {
  const factory _GetUserProfile(final String userId) = _$GetUserProfileImpl;

  String get userId;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserProfileImplCopyWith<_$GetUserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserProfileImplCopyWith<$Res> {
  factory _$$UpdateUserProfileImplCopyWith(
    _$UpdateUserProfileImpl value,
    $Res Function(_$UpdateUserProfileImpl) then,
  ) = __$$UpdateUserProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileEntity profile});
}

/// @nodoc
class __$$UpdateUserProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateUserProfileImpl>
    implements _$$UpdateUserProfileImplCopyWith<$Res> {
  __$$UpdateUserProfileImplCopyWithImpl(
    _$UpdateUserProfileImpl _value,
    $Res Function(_$UpdateUserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profile = null}) {
    return _then(
      _$UpdateUserProfileImpl(
        null == profile
            ? _value.profile
            : profile // ignore: cast_nullable_to_non_nullable
                  as UserProfileEntity,
      ),
    );
  }
}

/// @nodoc

class _$UpdateUserProfileImpl implements _UpdateUserProfile {
  const _$UpdateUserProfileImpl(this.profile);

  @override
  final UserProfileEntity profile;

  @override
  String toString() {
    return 'ProfileEvent.updateUserProfile(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileImplCopyWith<_$UpdateUserProfileImpl> get copyWith =>
      __$$UpdateUserProfileImplCopyWithImpl<_$UpdateUserProfileImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserProfile,
    required TResult Function(UserProfileEntity profile) updateUserProfile,
  }) {
    return updateUserProfile(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getUserProfile,
    TResult? Function(UserProfileEntity profile)? updateUserProfile,
  }) {
    return updateUserProfile?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserProfile,
    TResult Function(UserProfileEntity profile)? updateUserProfile,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserProfile value) getUserProfile,
    required TResult Function(_UpdateUserProfile value) updateUserProfile,
  }) {
    return updateUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserProfile value)? getUserProfile,
    TResult? Function(_UpdateUserProfile value)? updateUserProfile,
  }) {
    return updateUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserProfile value)? getUserProfile,
    TResult Function(_UpdateUserProfile value)? updateUserProfile,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserProfile implements ProfileEvent {
  const factory _UpdateUserProfile(final UserProfileEntity profile) =
      _$UpdateUserProfileImpl;

  UserProfileEntity get profile;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserProfileImplCopyWith<_$UpdateUserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
