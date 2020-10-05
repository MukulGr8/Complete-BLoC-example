import 'package:equatable/equatable.dart';

import '../authentication_bloc.dart';

/// Events for the [AuthenticationBloc] bloc
abstract class AuthenticationEvent extends Equatable {
  /// Base class for events fired by [AuthenticationBloc]
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

/// User has logged with success
class LoggedIn extends AuthenticationEvent {
  /// Event fired by [AuthenticationBloc] in case the user successfully logged in.
  const LoggedIn();
}

/// User requested to logout
class LoggedOut extends AuthenticationEvent {
  /// Event fired by [AuthenticationBloc] in case the user logged out.
  const LoggedOut();
}
