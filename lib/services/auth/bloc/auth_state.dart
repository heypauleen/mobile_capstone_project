import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:my_capstone_project/services/auth/auth_user.dart';

@immutable
abstract class AuthState {
  const AuthState();
}

class AuthStateUninitialized extends AuthState {
  const AuthStateUninitialized();
}

class AuthStateLoggedIn extends AuthState {
  final AuthUser user;
  const AuthStateLoggedIn(this.user);
}

// class AuthStateLoginFailure extends AuthState {
//   final Exception exception;
//   const AuthStateLoginFailure(this.exception);
// }

// class AuthStateNeedsVerifications extends AuthState {
//   const AuthStateNeedsVerifications();
// }

class AuthStateLoggedOut extends AuthState  {
  final Exception? exception;
  const AuthStateLoggedOut({
    required this.exception,
  });
}
