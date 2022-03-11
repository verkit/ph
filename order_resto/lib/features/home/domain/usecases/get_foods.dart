import 'package:injectable/injectable.dart';
import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/state/data_state.dart';
import 'package:order_resto/core/usecase/usecase.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class GetFoods implements UseCase<DataState<List<FoodEntity>>, FoodRequestParams> {
  final OrderRepository _orderRepository;
  GetFoods(this._orderRepository);

  @override
  Future<DataState<List<FoodEntity>>> call(FoodRequestParams params) {
    return _orderRepository.getFoods(params);
  }
}
