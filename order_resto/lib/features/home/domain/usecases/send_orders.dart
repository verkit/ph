import 'package:injectable/injectable.dart';
import 'package:order_resto/core/state/remote_data_state.dart';
import 'package:order_resto/features/home/data/models/response.dart';
import 'package:order_resto/features/home/domain/entities/order_entity.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class SendOrder {
  final OrderRepository _orderRepository;
  SendOrder(this._orderRepository);

  Future<RemoteDataState<PostResponse>> execute(OrderEntity orders) {
    return _orderRepository.sendOrder(orders);
  }
}
