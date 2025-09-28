import 'package:equatable/equatable.dart';

class UserProfileEntity extends Equatable {
  final String uid;
  final String name;
  final String email;
  final String? profilePic;
  final String? bio;

  const UserProfileEntity({
    required this.uid,
    required this.name,
    required this.email,
    this.profilePic,
    this.bio,
  });

  @override
  List<Object?> get props => [uid, name, email, profilePic, bio];
}
