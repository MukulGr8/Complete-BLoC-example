import 'package:equatable/equatable.dart';

import '../credentials_bloc.dart';

/// Events for the [CredentialsBloc] bloc
abstract class CredentialsEvent extends Equatable {
  /// The username
  final String username;
  /// The password
  final String password;
  /// Events fired by [CredentialsBloc] when a button is pressed. It provides
  /// information taken from the form.
  const CredentialsEvent(this.username, this.password);

  @override
  List<Object> get props => [username, password];
}

/// Event fired when the login button is tapped
class LoginButtonPressed extends CredentialsEvent {
  /// Event fired by [CredentialsBloc] when the login button is pressed
  const LoginButtonPressed({
    required String username,
    required String password
  }) : super(username, password);
}

/// Event fired when the register button is tapped
class RegisterButtonPressed extends CredentialsEvent {
  /// Event fired by [CredentialsBloc] when the register button is pressed
  const RegisterButtonPressed({
    required String username,
    required String password
  }) : super(username, password);
}
