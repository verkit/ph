import 'package:injectable/injectable.dart';
import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/state/remote_data_state.dart';
import 'package:order_resto/core/usecase/usecase.dart';
import 'package:order_resto/features/home/domain/entities/group_entity.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class GetGrups implements UseCase<RemoteDataState<List<GroupEntity>>, RequestParams> {
  final OrderRepository _orderRepository;
  GetGrups(this._orderRepository);

  @override
  Future<RemoteDataState<List<GroupEntity>>> call(RequestParams params) {
    return _orderRepository.getGroups(params);
  }
}
