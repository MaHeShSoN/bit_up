import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String uid;
  final String name;
  final String email;
  final String? profilePic;
  final String? bio;

  const UserEntity({
    required this.uid,
    required this.name,
    required this.email,
    this.profilePic,
    this.bio,
  });

  @override
  List<Object?> get props => [uid, name, email, profilePic, bio];
}
