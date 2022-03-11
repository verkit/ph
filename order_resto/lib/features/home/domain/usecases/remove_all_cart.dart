import 'package:injectable/injectable.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class RemoveAllCart {
  final OrderRepository _orderRepository;
  RemoveAllCart(this._orderRepository);

  Future<void> execute() {
    return _orderRepository.removeAllItemCart();
  }
}
