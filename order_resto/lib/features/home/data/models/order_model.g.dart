// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      kodeSales: json['kode_sales'] as String? ?? '0001',
      namaSales: json['nama_sales'] as String? ?? 'WAITERS01',
      kodeBarang: json['kode_barang'] as String,
      namaBarang: json['nama_barang'] as String,
      satuan: json['satuan'] as String,
      harga: json['harga'] as int,
      qty: json['qty'] as int,
      latlong: json['latlong'] as String,
      nama: json['nama'] as String,
      hp: json['hp'] as String,
      grup: json['grup'] as String,
      tanggalPemesanan: json['tanggal_pemesanan'] as String,
      jamPemesanan: json['jam_pemesanan'] as String,
      pembayaran: json['pembayaran'] as String,
      dp: json['dp'] as String,
      condiman: json['condiman'] as String?,
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'kode_sales': instance.kodeSales,
      'nama_sales': instance.namaSales,
      'kode_barang': instance.kodeBarang,
      'nama_barang': instance.namaBarang,
      'satuan': instance.satuan,
      'harga': instance.harga,
      'qty': instance.qty,
      'latlong': instance.latlong,
      'nama': instance.nama,
      'hp': instance.hp,
      'grup': instance.grup,
      'tanggal_pemesanan': instance.tanggalPemesanan,
      'jam_pemesanan': instance.jamPemesanan,
      'pembayaran': instance.pembayaran,
      'dp': instance.dp,
      'condiman': instance.condiman,
    };
