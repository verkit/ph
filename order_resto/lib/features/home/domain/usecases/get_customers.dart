import 'package:injectable/injectable.dart';
import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/state/data_state.dart';
import 'package:order_resto/core/usecase/usecase.dart';
import 'package:order_resto/features/home/domain/entities/customer_entity.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class GetCustomers implements UseCase<DataState<List<CustomerEntity>>, RequestParams> {
  final OrderRepository _orderRepository;
  GetCustomers(this._orderRepository);

  @override
  Future<DataState<List<CustomerEntity>>> call(RequestParams params) {
    return _orderRepository.getCustomers(params);
  }
}
