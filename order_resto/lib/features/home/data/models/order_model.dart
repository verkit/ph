import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    @Default('0001') String? kodeSales,
    @Default('WAITERS01') String? namaSales,
    // required String kodePelanggan,
    // required String namaPelanggan,
    required String kodeBarang,
    required String namaBarang,
    required String satuan,
    required int harga,
    required int qty,
    required String latlong,
    required String nama,
    required String hp,
    required String grup,
    required String tanggalPemesanan,
    required String jamPemesanan,
    required String pembayaran,
    required String dp,
    String? condiman,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
}
