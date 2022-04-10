import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/state/local_data_state.dart';
import 'package:order_resto/features/home/data/datasources/local/auth_data_source.dart';
import 'package:order_resto/features/home/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource _authDataSource;
  AuthRepositoryImpl(this._authDataSource);

  @override
  Future<LocalDataState<bool>> checkLoggedIn() async {
    try {
      bool result = await _authDataSource.isLoggedIn();
      return LocalDataSuccess(result);
    } on HiveError catch (e) {
      return LocalDataFailed(e);
    }
  }

  @override
  Future<LocalDataState<bool>> signIn(String password) async {
    try {
      bool result = await _authDataSource.signin(password);
      return LocalDataSuccess(result);
    } on HiveError catch (e) {
      return LocalDataFailed(e);
    }
  }

  @override
  Future<LocalDataState<bool>> signOut() async {
    try {
      bool result = await _authDataSource.signout();
      return LocalDataSuccess(result);
    } on HiveError catch (e) {
      return LocalDataFailed(e);
    }
  }
}
