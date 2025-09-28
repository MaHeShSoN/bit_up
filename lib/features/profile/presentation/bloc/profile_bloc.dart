import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/user_profile.dart';
import '../../domain/usecases/get_user_profile.dart';
import '../../domain/usecases/update_user_profile.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetUserProfile getUserProfile;
  final UpdateUserProfile updateUserProfile;

  ProfileBloc({
    required this.getUserProfile,
    required this.updateUserProfile,
  }) : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) {
      event.when(
        getUserProfile: (userId) => _onGetUserProfile(userId, emit),
        updateUserProfile: (profile) => _onUpdateUserProfile(profile, emit),
      );
    });
  }

  Future<void> _onGetUserProfile(String userId, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    final result = await getUserProfile(userId);
    result.fold(
      (failure) => emit(ProfileState.error(failure)),
      (profile) => emit(ProfileState.profileLoaded(profile)),
    );
  }

  Future<void> _onUpdateUserProfile(UserProfileEntity profile, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    final result = await updateUserProfile(profile);
    result.fold(
      (failure) => emit(ProfileState.error(failure)),
      (_) => emit(const ProfileState.profileUpdated()),
    );
  }
}
