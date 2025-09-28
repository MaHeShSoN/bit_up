import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/user_profile.dart';

part 'user_profile_model.g.dart';

@JsonSerializable()
class UserProfileModel {
  final String uid;
  final String name;
  final String email;
  final String? profilePic;
  final String? bio;

  const UserProfileModel({
    required this.uid,
    required this.name,
    required this.email,
    this.profilePic,
    this.bio,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) => _$UserProfileModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$UserProfileModelToJson(this);

  factory UserProfileModel.fromEntity(UserProfileEntity entity) {
    return UserProfileModel(
      uid: entity.uid,
      name: entity.name,
      email: entity.email,
      profilePic: entity.profilePic,
      bio: entity.bio,
    );
  }

  UserProfileEntity toEntity() {
    return UserProfileEntity(
      uid: uid,
      name: name,
      email: email,
      profilePic: profilePic,
      bio: bio,
    );
  }
}
