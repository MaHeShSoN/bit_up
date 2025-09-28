import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/sign_in_with_google.dart';
import '../../domain/usecases/sign_out.dart';
import '../../domain/usecases/get_current_user.dart';
import '../../domain/usecases/create_user_profile.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInWithGoogle signInWithGoogle;
  final SignOut signOut;
  final GetCurrentUser getCurrentUser;
  final CreateUserProfile createUserProfile;

  AuthBloc({
    required this.signInWithGoogle,
    required this.signOut,
    required this.getCurrentUser,
    required this.createUserProfile,
  }) : super(const AuthInitial()) {
    on<SignInWithGoogleEvent>(_onSignInWithGoogle);
    on<SignOutEvent>(_onSignOut);
    on<CheckAuthStatusEvent>(_onCheckAuthStatus);
    on<CreateUserProfileEvent>(_onCreateUserProfile);
  }

  Future<void> _onSignInWithGoogle(SignInWithGoogleEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    final result = await signInWithGoogle();
    result.fold(
      (failure) => emit(AuthError(failure)),
      (user) => emit(AuthAuthenticated(user)),
    );
  }

  Future<void> _onSignOut(SignOutEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    final result = await signOut();
    result.fold(
      (failure) => emit(AuthError(failure)),
      (_) => emit(const AuthUnauthenticated()),
    );
  }

  Future<void> _onCheckAuthStatus(CheckAuthStatusEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    final result = await getCurrentUser();
    result.fold(
      (failure) => emit(AuthError(failure)),
      (user) => user != null 
        ? emit(AuthAuthenticated(user))
        : emit(const AuthUnauthenticated()),
    );
  }

  Future<void> _onCreateUserProfile(CreateUserProfileEvent event, Emitter<AuthState> emit) async {
    if (state is AuthAuthenticated) {
      final currentUser = (state as AuthAuthenticated).user;
      final result = await createUserProfile(currentUser);
      result.fold(
        (failure) => emit(AuthError(failure)),
        (_) => emit(AuthAuthenticated(currentUser)),
      );
    }
  }
}
