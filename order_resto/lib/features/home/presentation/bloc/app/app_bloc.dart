import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/navigation/router.dart';
import 'package:order_resto/features/home/domain/usecases/auth/check_loggedin.dart';
import 'package:order_resto/features/home/domain/usecases/auth/signin.dart';
import 'package:order_resto/features/home/domain/usecases/auth/signout.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  final SignIn _signIn;
  final SignOut _signOut;
  final CheckLoggedIn _checkLoggedIn;

  AppBloc(
    this._signIn,
    this._signOut,
    this._checkLoggedIn,
  ) : super(AppState.init()) {
    on<SignInEvent>(_signin);
    on<SignOutEvent>(_signout);
    on<CheckLoggedInEvent>(_check);
    on<CheckFromSigninPageEvent>(_checkFromSigninPage);
  }

  Future<void> _signin(SignInEvent event, Emitter<AppState> emit) async {
    EasyLoading.show();
    var loggedIn = await _signIn.execute(event.password);

    EasyLoading.dismiss();
    emit(state.copyWith(loggedIn: loggedIn.data));

    if (loggedIn.data != null && loggedIn.data!) {
      event.context.go(AppRoutes.dashboard);
    } else {
      EasyLoading.showSuccess('Password salah');
    }
  }

  Future<void> _signout(SignOutEvent event, Emitter<AppState> emit) async {
    EasyLoading.show();
    var signout = await _signOut.execute();

    EasyLoading.dismiss();
    emit(state.copyWith(loggedIn: signout.data != null ? !signout.data! : false));
  }

  Future<void> _check(CheckLoggedInEvent event, Emitter<AppState> emit) async {
    EasyLoading.show();
    var loggedIn = await _checkLoggedIn.execute();

    EasyLoading.dismiss();
    emit(state.copyWith(loggedIn: loggedIn.data));

    if (loggedIn.data == null || (loggedIn.data != null && !loggedIn.data!)) {
      event.context.go(AppRoutes.login);
    }
  }

  Future<void> _checkFromSigninPage(CheckFromSigninPageEvent event, Emitter<AppState> emit) async {
    EasyLoading.show();
    var loggedIn = await _checkLoggedIn.execute();

    EasyLoading.dismiss();
    emit(state.copyWith(loggedIn: loggedIn.data));

    if (!(loggedIn.data == null || (loggedIn.data != null && !loggedIn.data!))) {
      event.context.go(AppRoutes.dashboard);
    }
  }
}
