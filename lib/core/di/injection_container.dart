import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../network/network_info.dart';
import '../../features/auth/data/datasources/auth_remote_data_source.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/sign_in_with_google.dart';
import '../../features/auth/domain/usecases/sign_out.dart';
import '../../features/auth/domain/usecases/get_current_user.dart';
import '../../features/auth/domain/usecases/create_user_profile.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';

import '../../features/events/data/datasources/events_remote_data_source.dart';
import '../../features/events/data/repositories/events_repository_impl.dart';
import '../../features/events/domain/repositories/events_repository.dart';
import '../../features/events/domain/usecases/get_events.dart';
import '../../features/events/domain/usecases/get_event_by_id.dart';
import '../../features/events/domain/usecases/rsvp_to_event.dart';
import '../../features/events/domain/usecases/cancel_rsvp.dart';
import '../../features/events/domain/usecases/is_user_rsvped.dart';
import '../../features/events/presentation/bloc/events_bloc.dart';

import '../../features/comments/data/datasources/comments_remote_data_source.dart';
import '../../features/comments/data/repositories/comments_repository_impl.dart';
import '../../features/comments/domain/repositories/comments_repository.dart';
import '../../features/comments/domain/usecases/get_comments.dart';
import '../../features/comments/domain/usecases/post_comment.dart';
import '../../features/comments/presentation/bloc/comments_bloc.dart';

import '../../features/profile/data/datasources/profile_remote_data_source.dart';
import '../../features/profile/data/repositories/profile_repository_impl.dart';
import '../../features/profile/domain/repositories/profile_repository.dart';
import '../../features/profile/domain/usecases/get_user_profile.dart';
import '../../features/profile/domain/usecases/update_user_profile.dart';
import '../../features/profile/presentation/bloc/profile_bloc.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  // Core
  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(Connectivity()));
  
  // Firebase
  getIt.registerLazySingleton<auth.FirebaseAuth>(() => auth.FirebaseAuth.instance);
  getIt.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  getIt.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
  
  // Features - Auth
  // Data sources
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      firebaseAuth: getIt(),
      googleSignIn: getIt(),
    ),
  );
  
  // Repository
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
    remoteDataSource: getIt(),
    networkInfo: getIt(),
  ));
  
  // Use cases
  getIt.registerLazySingleton(() => SignInWithGoogle(getIt()));
  getIt.registerLazySingleton(() => SignOut(getIt()));
  getIt.registerLazySingleton(() => GetCurrentUser(getIt()));
  getIt.registerLazySingleton(() => CreateUserProfile(getIt()));
  
  // Bloc
  getIt.registerFactory(() => AuthBloc(
    signInWithGoogle: getIt(),
    signOut: getIt(),
    getCurrentUser: getIt(),
    createUserProfile: getIt(),
  ));
  
  // Features - Events
  // Data sources
  getIt.registerLazySingleton<EventsRemoteDataSource>(
    () => EventsRemoteDataSourceImpl(firestore: getIt()),
  );
  
  // Repository
  getIt.registerLazySingleton<EventsRepository>(() => EventsRepositoryImpl(
    remoteDataSource: getIt(),
    networkInfo: getIt(),
  ));
  
  // Use cases
  getIt.registerLazySingleton(() => GetEvents(getIt()));
  getIt.registerLazySingleton(() => GetEventById(getIt()));
  getIt.registerLazySingleton(() => RsvpToEvent(getIt()));
  getIt.registerLazySingleton(() => CancelRsvp(getIt()));
  getIt.registerLazySingleton(() => IsUserRsvped(getIt()));
  
  // Bloc
  getIt.registerFactory(() => EventsBloc(
    getEvents: getIt(),
    getEventById: getIt(),
    rsvpToEvent: getIt(),
    cancelRsvp: getIt(),
    isUserRsvped: getIt(),
  ));
  
  // Features - Comments
  // Data sources
  getIt.registerLazySingleton<CommentsRemoteDataSource>(
    () => CommentsRemoteDataSourceImpl(firestore: getIt()),
  );
  
  // Repository
  getIt.registerLazySingleton<CommentsRepository>(() => CommentsRepositoryImpl(
    remoteDataSource: getIt(),
    networkInfo: getIt(),
  ));
  
  // Use cases
  getIt.registerLazySingleton(() => GetComments(getIt()));
  getIt.registerLazySingleton(() => PostComment(getIt()));
  
  // Bloc
  getIt.registerFactory(() => CommentsBloc(
    getComments: getIt(),
    postComment: getIt(),
  ));
  
  // Features - Profile
  // Data sources
  getIt.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(firestore: getIt()),
  );
  
  // Repository
  getIt.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImpl(
    remoteDataSource: getIt(),
    networkInfo: getIt(),
  ));
  
  // Use cases
  getIt.registerLazySingleton(() => GetUserProfile(getIt()));
  getIt.registerLazySingleton(() => UpdateUserProfile(getIt()));
  
  // Bloc
  getIt.registerFactory(() => ProfileBloc(
    getUserProfile: getIt(),
    updateUserProfile: getIt(),
  ));
}
