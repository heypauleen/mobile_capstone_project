import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:firebase_auth/firebase_auth.dart';

class AuthUser {
  final String email;
  final String id;
  const AuthUser({
    required this.email,
    required this.id,
  });

  factory AuthUser.fromFirebase(User user) => AuthUser(
        email: user.email!,
        id: user.uid,
      );

  //final bool isEmailVerified;
  //const AuthUser(this.isEmailVerified);

  // factory AuthUser.fromFirebase(User user) => AuthUser(user.emailVerified);
  // final String? email;
  // final User user;

  // AuthUser.fromFirebase(this.user, this.email);
}
