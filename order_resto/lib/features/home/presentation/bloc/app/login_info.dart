import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/utils/constants.dart';

@injectable
class LoginInfo extends ChangeNotifier {
  var _loggedIn = false;
  bool get loggedIn => _loggedIn;

  var box = Hive.openBox(AppString.APP_BOX);
  void check() async {
    bool? logged = (await box).get(AppString.LOGGED_KEY);
    _loggedIn = logged ?? false;
    notifyListeners();
  }

  void signin(String password) async {
    bool logged = false;
    if (password == AppString.PASSWORD_APP) {
      logged = true;
    }
    (await box).put(AppString.LOGGED_KEY, logged);
    _loggedIn = logged;
    notifyListeners();
  }

  void signout() async {
    (await box).put(AppString.LOGGED_KEY, false);
    _loggedIn = false;
    notifyListeners();
  }
}
