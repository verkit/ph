part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object?> get props => [];
}

class SignOutEvent extends AppEvent {
  final BuildContext context;
  const SignOutEvent(this.context);
}

class SignInEvent extends AppEvent {
  final String password;
  final BuildContext context;
  const SignInEvent(this.password, this.context);

  @override
  List<Object?> get props => [password];
}

class CheckLoggedInEvent extends AppEvent {
  final BuildContext context;
  const CheckLoggedInEvent(this.context);
}

class CheckFromSigninPageEvent extends AppEvent {
  final BuildContext context;
  const CheckFromSigninPageEvent(this.context);
}
