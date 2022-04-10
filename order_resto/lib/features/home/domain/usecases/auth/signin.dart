import 'package:injectable/injectable.dart';
import 'package:order_resto/core/state/local_data_state.dart';
import 'package:order_resto/features/home/domain/repositories/auth_repository.dart';

@lazySingleton
class SignIn {
  final AuthRepository _authRepository;
  SignIn(this._authRepository);

  Future<LocalDataState<bool>> execute(String password) async {
    return await _authRepository.signIn(password);
  }
}
