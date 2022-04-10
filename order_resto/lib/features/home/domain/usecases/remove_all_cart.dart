import 'package:injectable/injectable.dart';
import 'package:order_resto/core/state/local_data_state.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class RemoveAllCart {
  final OrderRepository _orderRepository;
  RemoveAllCart(this._orderRepository);

  Future<LocalDataState<void>> execute() {
    return _orderRepository.removeAllItemCart();
  }
}
