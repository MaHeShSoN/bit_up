import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class CreateUserProfile {
  final AuthRepository repository;

  CreateUserProfile(this.repository);

  ResultVoid call(UserEntity user) async {
    return repository.createUserProfile(user);
  }
}
