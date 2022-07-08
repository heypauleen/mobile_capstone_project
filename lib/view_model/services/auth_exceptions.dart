class UserNotFoundAuthException implements Exception {}

class WrongPasswordAuthException implements Exception {}

//Generic Exceptions
class GenericAuthException implements Exception {
  final String? message;

  GenericAuthException({this.message = "Something went wrong"});

  @override
  String toString() => 'GenericException { message : $message } ';
}

class UserNotLoggedInAuthException implements Exception {}
