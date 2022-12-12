//Login Exceptions

class UserNotFoundAuthException implements Exception{}
class WrongPasswordAuthException implements Exception{}

//Register Exceptions

class WeakPasswordAuthException implements Exception{}
class EmailAlreadyInUsedAuthException implements Exception{}
class InvalidEmailAuthException implements Exception{}
class EmailAddressBadlyFormattedAuthException implements Exception{}

//Generic exceptions
class GenericAuthException implements Exception{}
class UserNotLoggedInAuthException implements Exception{}


