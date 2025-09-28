import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

import '../error/failures.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid = Future<Either<Failure, void>>;
typedef DataMap = Map<String, dynamic>;
typedef UserCredential = auth.User;
