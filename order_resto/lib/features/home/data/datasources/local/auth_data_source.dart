import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/utils/constants.dart';

abstract class AuthDataSource {
  Future<bool> isLoggedIn();
  Future<bool> signin(String password);
  Future<bool> signout();
}

@LazySingleton(as: AuthDataSource)
class AuthDataSourceImpl extends AuthDataSource {
  var box = Hive.openBox(AppString.APP_BOX);

  @override
  Future<bool> isLoggedIn() async {
    bool? logged = (await box).get(AppString.LOGGED_KEY);
    return logged ?? false;
  }

  @override
  Future<bool> signin(String password) async {
    bool logged = false;
    if (password == AppString.PASSWORD_APP) {
      logged = true;
    }
    (await box).put(AppString.LOGGED_KEY, logged);
    return logged;
  }

  @override
  Future<bool> signout() async {
    (await box).put(AppString.LOGGED_KEY, false);
    return true;
  }
}
