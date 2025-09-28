import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../core/utils/typedefs.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signInWithGoogle();
  Future<void> signOut();
  Future<UserModel?> getCurrentUser();
  Future<void> createUserProfile(UserModel user);
  Future<void> updateUserProfile(UserModel user);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final auth.FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  AuthRemoteDataSourceImpl({
    required this.firebaseAuth,
    required this.googleSignIn,
  });

  @override
  Future<UserModel> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        throw Exception('Google sign in was cancelled');
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final credential = auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final auth.UserCredential userCredential = await firebaseAuth.signInWithCredential(credential);
      final auth.User? user = userCredential.user;

      if (user == null) {
        throw Exception('Failed to get user from Google sign in');
      }

      return UserModel(
        uid: user.uid,
        name: user.displayName ?? 'Unknown User',
        email: user.email ?? '',
        profilePic: user.photoURL,
      );
    } catch (e) {
      throw Exception('Google sign in failed: $e');
    }
  }

  @override
  Future<void> signOut() async {
    await Future.wait([
      firebaseAuth.signOut(),
      googleSignIn.signOut(),
    ]);
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    final auth.User? user = firebaseAuth.currentUser;
    if (user == null) return null;

    return UserModel(
      uid: user.uid,
      name: user.displayName ?? 'Unknown User',
      email: user.email ?? '',
      profilePic: user.photoURL,
    );
  }

  @override
  Future<void> createUserProfile(UserModel user) async {
    // This will be implemented with Firestore
    throw UnimplementedError();
  }

  @override
  Future<void> updateUserProfile(UserModel user) async {
    // This will be implemented with Firestore
    throw UnimplementedError();
  }
}
