// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      kodeSales: json['kode_sales'] as String? ?? '0001',
      namaSales: json['nama_sales'] as String? ?? 'WAITERS01',
      kodePelanggan: json['kode_pelanggan'] as String,
      namaPelanggan: json['nama_pelanggan'] as String,
      kodeBarang: json['kode_barang'] as String,
      namaBarang: json['nama_barang'] as String,
      satuan: json['satuan'] as String,
      harga: json['harga'] as int,
      qty: json['qty'] as int,
      latlong: json['latlong'] as String,
      hp: json['hp'] as String,
      grup: json['grup'] as String,
      condiman: json['condiman'] as String?,
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'kode_sales': instance.kodeSales,
      'nama_sales': instance.namaSales,
      'kode_pelanggan': instance.kodePelanggan,
      'nama_pelanggan': instance.namaPelanggan,
      'kode_barang': instance.kodeBarang,
      'nama_barang': instance.namaBarang,
      'satuan': instance.satuan,
      'harga': instance.harga,
      'qty': instance.qty,
      'latlong': instance.latlong,
      'hp': instance.hp,
      'grup': instance.grup,
      'condiman': instance.condiman,
    };
