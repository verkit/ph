import 'package:injectable/injectable.dart';
import 'package:order_resto/core/state/local_data_state.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class GetCarts {
  final OrderRepository _orderRepository;
  GetCarts(this._orderRepository);

  Future<LocalDataState<List<CartEntity>>> execute() {
    return _orderRepository.getCarts();
  }
}
