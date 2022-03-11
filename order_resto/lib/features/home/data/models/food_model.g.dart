// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodResponse _$$_FoodResponseFromJson(Map<String, dynamic> json) =>
    _$_FoodResponse(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FoodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: const DynamicIntConverter().fromJson(json['per_page']),
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_FoodResponseToJson(_$_FoodResponse instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links?.map((e) => e.toJson()).toList(),
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': const DynamicIntConverter().toJson(instance.perPage),
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$_FoodModel _$$_FoodModelFromJson(Map<String, dynamic> json) => _$_FoodModel(
      idtab: json['idtab'] as int?,
      kodeBarang: json['kode_barang'] as String?,
      namaBarang: json['nama_barang'] as String?,
      grup: json['grup'] as String?,
      namaKemasan: json['nama_kemasan'] as String?,
      hargajual1:
          const StringDoubleConverter().fromJson(json['hargajual1'] as String),
      gambar: json['gambar'] as String?,
    );

Map<String, dynamic> _$$_FoodModelToJson(_$_FoodModel instance) =>
    <String, dynamic>{
      'idtab': instance.idtab,
      'kode_barang': instance.kodeBarang,
      'nama_barang': instance.namaBarang,
      'grup': instance.grup,
      'nama_kemasan': instance.namaKemasan,
      'hargajual1': const StringDoubleConverter().toJson(instance.hargajual1),
      'gambar': instance.gambar,
    };
