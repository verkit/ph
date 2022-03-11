import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/utils/constants.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';

abstract class LocalDataSource {
  Future<List<CartEntity>> getCarts();
  Future<void> insertCart(List<CartEntity> carts);
  // Future<void> removeItemCart(CartEntity cart);
  Future<void> removeAllCart();
}

@LazySingleton(as: LocalDataSource)
class LocalDataSourceImpl extends LocalDataSource {
  var box = Hive.openBox(AppString.CART_BOX);

  @override
  Future<List<CartEntity>> getCarts() async {
    List<dynamic>? data = (await box).get(AppString.CART_KEY);
    if (data != null) {
      List<CartEntity> carts = data.map((e) => e as CartEntity).toList();
      return carts;
    }
    return [];
  }

  // @override
  // Future<void> insertCart(CartEntity cart) async {
  //   List<CartEntity> data = await getCarts();
  //   data.add(cart);
  //   (await box).put(AppString.CART_KEY, data);
  // }

  @override
  Future<void> insertCart(List<CartEntity> carts) async {
    List<CartEntity> data = await getCarts();
    data.clear();
    data.addAll(carts);
    (await box).put(AppString.CART_KEY, data);
  }

  @override
  Future<void> removeAllCart() async {
    (await box).clear();
  }

  // @override
  // Future<void> removeItemCart(CartEntity cart) async {
  //   List<CartEntity>? data = await getCarts();
  //   data.remove(cart);
  //   (await box).put(AppString.CART_KEY, data);
  // }
}
