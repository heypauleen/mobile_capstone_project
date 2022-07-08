import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/view_model/provider/auth_provider.dart';
import 'package:my_capstone_project/view_model/services/auth_exceptions.dart';

abstract class BaseAuthServices {
  Stream<User?> get authStateChanges;
  Future<void> signIn({required String email, required String password});
  User? getCurrentUser();
  Future<void> signOut();
}

final authenticationServicesProvider = Provider<AuthenticationService>((ref) {
  return AuthenticationService(ref.read);
});

class AuthenticationService with BaseAuthServices {
  final Reader _read;

  const AuthenticationService(this._read);

  @override
  Stream<User?> get authStateChanges =>
      _read(firebaseAuthProvider).authStateChanges();

  @override
  User? getCurrentUser() {
    try {
      return _read(firebaseAuthProvider).currentUser;
    } on FirebaseAuthException catch (_) {
      throw GenericAuthException();
    }
  }

  @override
  Future<void> signIn({required String email, required String password}) async {
    try {
      await _read(firebaseAuthProvider).signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw UserNotFoundAuthException();
      } else if (e.code == 'wrong-password') {
        throw WrongPasswordAuthException();
      } else {
        throw GenericAuthException();
      }
    } catch (e) {
      throw GenericAuthException();
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _read(firebaseAuthProvider).signOut();
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }
  // final Reader _read;
  // const AuthenticationService(this._read);

  // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // //AuthenticationService(this._firebaseAuth);

  // Stream<User?> get authStateChange => _firebaseAuth.authStateChanges();

  // //sign in
  // Future<void> signIn({
  //   required String email,
  //   required String password,
  // }) async {
  //   try {
  //     await _firebaseAuth.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       throw UserNotFoundAuthException();
  //     } else if (e.code == 'wrong-password') {
  //       throw WrongPasswordAuthException();
  //     } else {
  //       throw GenericAuthException();
  //     }
  //   } catch (_) {
  //     throw GenericAuthException();
  //   }
  // }

  // //Sign Out
  // Future<void> signOut() async {
  //   await _firebaseAuth.signOut();
  // }

  // //Get current user
  // User? getCurrentUser() {
  //   return _read(_firebaseAuth).currentUser;
  // }
}
