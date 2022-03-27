import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_resto/features/home/data/models/order_model.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';

part 'order_entity.freezed.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const OrderEntity._();
  const factory OrderEntity({
    @Default('0001') String? kodeSales,
    @Default('WAITERS01') String? namaSales,
    // required String kodePelanggan,
    // required String namaPelanggan,
    required String latlong,
    required String nama,
    required String hp,
    required List<CartEntity> items,
    required String tanggalPemesanan,
    required String jamPemesanan,
    required String pembayaran,
    required String dp,
  }) = _OrderEntity;

  List<OrderModel> toListModel() {
    List<OrderModel> orders = [];
    for (var item in items) {
      orders.add(OrderModel(
        // kodePelanggan: kodePelanggan,
        // namaPelanggan: namaPelanggan,
        nama: nama,
        kodeBarang: item.makanan.kodeBarang,
        namaBarang: item.makanan.namaBarang,
        satuan: item.makanan.namaKemasan,
        harga: item.makanan.hargajual1,
        condiman: item.condiman,
        qty: item.qty,
        latlong: latlong,
        hp: hp,
        grup: item.makanan.grup,
        dp: dp,
        jamPemesanan: jamPemesanan,
        tanggalPemesanan: tanggalPemesanan,
        pembayaran: pembayaran,
      ));
    }
    return orders;
  }
}
