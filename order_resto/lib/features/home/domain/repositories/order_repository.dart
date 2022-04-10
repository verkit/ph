import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/state/local_data_state.dart';
import 'package:order_resto/core/state/remote_data_state.dart';
import 'package:order_resto/features/home/data/models/response.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';
import 'package:order_resto/features/home/domain/entities/customer_entity.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/domain/entities/group_entity.dart';
import 'package:order_resto/features/home/domain/entities/order_entity.dart';
import 'package:order_resto/features/home/domain/entities/sales_entity.dart';

abstract class OrderRepository {
  // API methods
  Future<RemoteDataState<List<GroupEntity>>> getGroups(RequestParams params);
  Future<RemoteDataState<List<FoodEntity>>> getFoods(FoodRequestParams params);
  Future<RemoteDataState<List<SalesEntity>>> getSalesses(RequestParams params);
  Future<RemoteDataState<List<CustomerEntity>>> getCustomers(RequestParams params);
  Future<RemoteDataState<PostResponse>> sendOrder(OrderEntity orders);

  // Database methods
  Future<LocalDataState<List<CartEntity>>> getCarts();
  // Future<void> saveItemCart(CartEntity cart);
  Future<LocalDataState<void>> saveItemCart(List<CartEntity> carts);
  // Future<void> removeItemCart(CartEntity cart);
  Future<LocalDataState<void>> removeAllItemCart();
}
