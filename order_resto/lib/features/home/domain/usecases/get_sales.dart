import 'package:injectable/injectable.dart';
import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/state/remote_data_state.dart';
import 'package:order_resto/core/usecase/usecase.dart';
import 'package:order_resto/features/home/domain/entities/sales_entity.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class GetSalesses implements UseCase<RemoteDataState<List<SalesEntity>>, RequestParams> {
  final OrderRepository _orderRepository;
  GetSalesses(this._orderRepository);

  @override
  Future<RemoteDataState<List<SalesEntity>>> call(RequestParams params) {
    return _orderRepository.getSalesses(params);
  }
}
