import '../../../../core/utils/typedefs.dart';
import '../entities/user_profile.dart';

abstract class ProfileRepository {
  ResultFuture<UserProfileEntity> getUserProfile(String userId);
  ResultVoid updateUserProfile(UserProfileEntity profile);
}
