import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/state/data_state.dart';
import 'package:order_resto/features/home/data/models/response.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';
import 'package:order_resto/features/home/domain/entities/customer_entity.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/domain/entities/group_entity.dart';
import 'package:order_resto/features/home/domain/entities/order_entity.dart';
import 'package:order_resto/features/home/domain/entities/sales_entity.dart';

abstract class OrderRepository {
  // API methods
  Future<DataState<List<GroupEntity>>> getGroups(RequestParams params);
  Future<DataState<List<FoodEntity>>> getFoods(FoodRequestParams params);
  Future<DataState<List<SalesEntity>>> getSalesses(RequestParams params);
  Future<DataState<List<CustomerEntity>>> getCustomers(RequestParams params);
  Future<DataState<PostResponse>> sendOrder(OrderEntity orders);

  // Database methods
  Future<List<CartEntity>> getCarts();
  // Future<void> saveItemCart(CartEntity cart);
  Future<void> saveItemCart(List<CartEntity> carts);
  // Future<void> removeItemCart(CartEntity cart);
  Future<void> removeAllItemCart();
}
