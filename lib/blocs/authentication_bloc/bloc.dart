import 'package:flutter_app/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'events.dart';
import 'states.dart';

/// Manages the authentication state of the app
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  ///
  final UserRepository userRepository;

  /// Creates a Bloc which takes care of managing the authentications state
  /// of the app. It requires a [userRepository] to do the actual logout.
  AuthenticationBloc(this.userRepository) : super(const AuthenticationInit());

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if (event is LoggedIn) {
      yield const AuthenticationSuccess();
    }

    if (event is LoggedOut) {
      yield const AuthenticationLoading();
      await userRepository.logOut();
      yield const AuthenticationRevoked();
    }
  }
}
