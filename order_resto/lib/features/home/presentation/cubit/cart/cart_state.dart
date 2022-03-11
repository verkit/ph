part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const CartState._();
  const factory CartState({
    AppState? status,
    List<CartEntity>? items,
    int? qty,
  }) = _CartState;

  factory CartState.idle() => const CartState(
        status: AppState.idle,
        items: null,
        qty: 0,
      );

  int get total {
    int _total = 0;
    if (items != null) {
      for (var item in items!) {
        _total += item.makanan.hargajual1 * item.qty;
      }
      return _total;
    }

    return 0;
  }
}
