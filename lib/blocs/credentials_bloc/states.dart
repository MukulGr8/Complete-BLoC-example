import 'package:equatable/equatable.dart';

import '../credentials_bloc.dart';

/// States emitted by [CredentialsBloc]
abstract class CredentialsState extends Equatable {
  /// Base class for states emitted by [CredentialsState]
  const CredentialsState();

  @override
  List<Object> get props => [];
}

/// Action required (authentication or registration)
class CredentialsInitial extends CredentialsState {
  /// State emitted by [CredentialsBloc] when the form is created
  const CredentialsInitial();
}

/// Login request awaiting for response
class CredentialsLoginLoading extends CredentialsState {
  /// State emitted by [CredentialsBloc] while the login request is loading
  const CredentialsLoginLoading();
}

/// Registration request awaiting for response
class CredentialsRegisterLoading extends CredentialsState {
  /// State emitted by [CredentialsBloc] while the registration request is loading
  const CredentialsRegisterLoading();
}

/// Invalid authentication credentials
class CredentialsLoginFailure extends CredentialsState {
  /// State emitted by [CredentialsBloc] when the login failed
  const CredentialsLoginFailure();
}

/// Weak password or invalid email
class CredentialsRegisterFailure extends CredentialsState {
  /// State emitted by [CredentialsBloc] when the registration failed
  const CredentialsRegisterFailure();
}
