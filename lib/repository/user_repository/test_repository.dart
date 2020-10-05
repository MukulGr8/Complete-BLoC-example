import 'package:flutter/material.dart';
import 'package:flutter_app/repository/user_repository.dart';

/// Registration and authentication mock (for testing)
class TestUserRepository extends UserRepository {
  /// The email of the user
  final String fakeEmail;
  /// Determines whether the methods will fail or not
  final bool success;
  /// Mock authentication repository (for testing)
  const TestUserRepository({
    required this.fakeEmail,
    required this.success,
  });

  @override
  Future<bool> authenticate(String username, String password) {
    return Future<bool>.delayed(const Duration(seconds: 1), () => success);
  }

  @override
  Future<bool> register(String username, String password) {
    return Future<bool>.delayed(const Duration(seconds: 1), () => success);
  }

  @override
  Future<void> logOut() => Future.delayed(const Duration(milliseconds: 200));

  @override
  String get signedEmail => fakeEmail;
}
