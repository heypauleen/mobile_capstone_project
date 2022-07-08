//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/view_model/services/auth_services.dart';

// final firebaseAuthProvider = Provider<FirebaseAuth>(
//   (ref) => FirebaseAuth.instance);

// final authStateChangesProvider = StreamProvider<User?>(
//     (ref) => ref.watch(firebaseAuthProvider).authStateChanges());

//  final authServicesProvider = Provider<AuthenticationService>((ref) {
//    return AuthenticationService(ref.read(firebaseAuthProvider));
// });

final authStateProvider = StreamProvider<User?>((ref) {
  return ref.read(authenticationServicesProvider).authStateChanges;
});

final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final firebaseFirestoreProvider =
    Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);
