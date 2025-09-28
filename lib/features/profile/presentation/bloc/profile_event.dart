import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_profile.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserProfile(String userId) = _GetUserProfile;
  const factory ProfileEvent.updateUserProfile(UserProfileEntity profile) = _UpdateUserProfile;
}
