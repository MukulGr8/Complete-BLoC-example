import 'package:equatable/equatable.dart';

import '../authentication_bloc.dart';

/// States emitted by [AuthenticationBloc]
abstract class AuthenticationState extends Equatable {
  /// Base class for states emitted by [AuthenticationBloc]
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

/// App just opened, login or register actions required
class AuthenticationInit extends AuthenticationState {
  /// Event emitted by [AuthenticationBloc] when the app is opened
  const AuthenticationInit();
}

/// Login made with success
class AuthenticationSuccess extends AuthenticationState {
  /// Event emitted by [AuthenticationBloc] when the authentication completed
  /// successfully
  const AuthenticationSuccess();
}

/// Logout
class AuthenticationRevoked extends AuthenticationState {
  /// Event emitted by [AuthenticationBloc] when the user logged out
  const AuthenticationRevoked();
}

/// Loading (awaiting for registration or authentication)
class AuthenticationLoading extends AuthenticationState {
  /// Event emitted by [AuthenticationBloc] while the user is being authenticated
  const AuthenticationLoading();
}
