import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/utils/app_state.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/domain/entities/order_entity.dart';
import 'package:order_resto/features/home/domain/usecases/get_carts.dart';
import 'package:order_resto/features/home/domain/usecases/insert_cart.dart';
import 'package:order_resto/features/home/domain/usecases/remove_all_cart.dart';
import 'package:order_resto/features/home/domain/usecases/send_orders.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

@injectable
class CartCubit extends Cubit<CartState> {
  final GetCarts _getCarts;
  final InsertCart _insertCart;
  final RemoveAllCart _removeAllCart;
  final SendOrder _sendOrder;

  CartCubit(
    this._getCarts,
    this._insertCart,
    this._removeAllCart,
    this._sendOrder,
  ) : super(CartState.idle());

  CartEntity foodToCart(FoodEntity food) {
    return CartEntity(makanan: food, qty: 1);
  }

  void loadItem() async {
    emit(state.copyWith(items: [], status: AppState.progress));
    var data = await _getCarts.execute();
    int qty = 0;
    for (var item in data) {
      qty += item.qty;
    }
    emit(state.copyWith(items: data, qty: qty, status: AppState.success));
  }

  void changeCondiman(int i, String condiman) {
    emit(state.copyWith(status: AppState.progress));

    var carts = state.items;
    var newCarts = carts![i].copyWith(condiman: condiman);
    carts[i] = newCarts;
    emit(state.copyWith(
      items: carts,
      status: AppState.success,
    ));
  }

  void insertItem(dynamic food, int currentQty) {
    emit(state.copyWith(status: AppState.progress));
    CartEntity item = food is FoodEntity ? foodToCart(food) : food;
    var carts = state.items ?? [];
    if (carts.where((element) => element.makanan.idtab == item.makanan.idtab).isNotEmpty) {
      carts = _increaseQty(carts, item);
    } else {
      carts.add(item);
    }

    _insertCart.execute(carts);
    emit(state.copyWith(
      items: carts,
      status: AppState.success,
      qty: currentQty + 1,
    ));
  }

  void removeItem(CartEntity item, int currentQty) {
    emit(state.copyWith(status: AppState.progress));
    var carts = state.items;
    if (carts != null && carts.isNotEmpty) {
      carts = _decreaseQty(carts, item);
      _insertCart.execute(carts);

      emit(state.copyWith(
        items: carts,
        status: AppState.success,
        qty: currentQty - 1,
      ));
    }
    emit(state.copyWith(status: AppState.success));
  }

  List<CartEntity> _increaseQty(List<CartEntity> carts, CartEntity item) {
    List<CartEntity> _newCarts = [];
    for (var cart in carts) {
      if (cart.makanan.idtab == item.makanan.idtab) {
        _newCarts.add(cart.copyWith(qty: cart.qty + 1));
      } else {
        _newCarts.add(cart);
      }
    }
    return _newCarts;
  }

  List<CartEntity> _decreaseQty(List<CartEntity> carts, CartEntity item) {
    List<CartEntity> _newCarts = [];
    _newCarts.addAll(carts);

    int index = _newCarts.indexWhere((element) => element.makanan.idtab == item.makanan.idtab);
    if (index != -1) {
      if (_newCarts[index].qty > 1) {
        var _new = _newCarts[index].copyWith(qty: _newCarts[index].qty - 1);
        _newCarts[index] = _new;
      } else {
        _newCarts.removeAt(index);
      }
    }
    return _newCarts;
  }

  void clearCart() {
    _removeAllCart.execute();
    emit(state.copyWith(items: [], status: AppState.success, qty: 0));
  }

  Future<String> sendOrder({
    required String hp,
    required String dp,
    required String tanggalPemesanan,
    required String jamPemesanan,
    required String pembayaran,
    required String nama,
    // required CustomerEntity customer,
  }) async {
    EasyLoading.show();
    try {
      var position = await _determinePosition();
      var order = OrderEntity(
        // kodePelanggan: customer.kodePelanggan,
        // namaPelanggan: customer.namaPelanggan,
        nama: nama,
        latlong: '${position.latitude},${position.longitude}',
        hp: hp,
        items: state.items!,
        dp: dp,
        jamPemesanan: jamPemesanan,
        tanggalPemesanan: tanggalPemesanan,
        pembayaran: pembayaran,
      );
      EasyLoading.dismiss();
      return order.toString();
      // var send = await _sendOrder.execute(order);

      // if (send.data != null) {
      //   if (send.data!.success) {
      //     clearCart();
      //   }
      //   EasyLoading.dismiss();
      //   return send.data!.message;
      // } else {
      //   return send.error!.message;
      // }
    } catch (e) {
      EasyLoading.dismiss();
      return 'Terjadi kesalahan';
    }
  }

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}
