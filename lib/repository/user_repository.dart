/// Contains the minimal authentication logic that must be implemented
/// by a provider. It can also be used to create "mock" classes for easy
/// unit testing.
abstract class UserRepository {
  /// Creates the repository for authenticating an user
  const UserRepository();

  /// Email of the signed user
  String get signedEmail;

  /// Login with username and password
  Future<bool> authenticate(String username, String password);

  /// Registration with username and password
  Future<bool> register(String username, String password);

  /// Logout
  Future<void> logOut();
}
