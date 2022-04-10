import 'package:injectable/injectable.dart';
import 'package:order_resto/core/state/local_data_state.dart';
import 'package:order_resto/features/home/domain/repositories/auth_repository.dart';

@lazySingleton
class SignOut {
  final AuthRepository _authRepository;
  SignOut(this._authRepository);

  Future<LocalDataState<bool>> execute() async {
    return await _authRepository.signOut();
  }
}
