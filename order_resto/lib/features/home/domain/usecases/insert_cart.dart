import 'package:injectable/injectable.dart';
import 'package:order_resto/core/state/local_data_state.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class InsertCart {
  final OrderRepository _orderRepository;
  InsertCart(this._orderRepository);

  Future<LocalDataState<void>> execute(List<CartEntity> carts) {
    return _orderRepository.saveItemCart(carts);
  }
}
