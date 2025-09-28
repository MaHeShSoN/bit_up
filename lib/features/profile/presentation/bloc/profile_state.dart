import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_profile.dart';
import '../../../../core/error/failures.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.profileLoaded(UserProfileEntity profile) = _ProfileLoaded;
  const factory ProfileState.profileUpdated() = _ProfileUpdated;
  const factory ProfileState.error(Failure failure) = _Error;
}
