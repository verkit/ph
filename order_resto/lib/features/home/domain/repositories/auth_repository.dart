import 'package:order_resto/core/state/local_data_state.dart';

abstract class AuthRepository {
  Future<LocalDataState<bool>> signIn(String password);
  Future<LocalDataState<bool>> signOut();
  Future<LocalDataState<bool>> checkLoggedIn();
}
