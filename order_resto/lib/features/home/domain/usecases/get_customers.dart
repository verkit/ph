import 'package:injectable/injectable.dart';
import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/state/remote_data_state.dart';
import 'package:order_resto/core/usecase/usecase.dart';
import 'package:order_resto/features/home/domain/entities/customer_entity.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class GetCustomers implements UseCase<RemoteDataState<List<CustomerEntity>>, RequestParams> {
  final OrderRepository _orderRepository;
  GetCustomers(this._orderRepository);

  @override
  Future<RemoteDataState<List<CustomerEntity>>> call(RequestParams params) {
    return _orderRepository.getCustomers(params);
  }
}
