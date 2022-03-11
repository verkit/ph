// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesResponse _$$_SalesResponseFromJson(Map<String, dynamic> json) =>
    _$_SalesResponse(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SalesModel.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$_SalesResponseToJson(_$_SalesResponse instance) =>
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

_$_SalesModel _$$_SalesModelFromJson(Map<String, dynamic> json) =>
    _$_SalesModel(
      kodeSales: json['kode_sales'] as String?,
      namaSales: json['nama_sales'] as String?,
      alamat: json['alamat'] as String?,
      kota: json['kota'] as String?,
      kodePos: json['kode_pos'] as String?,
      telepon: json['telepon'] as String?,
      hp: json['hp'] as String?,
      tipe: json['tipe'] as String?,
      area: json['area'] as String?,
    );

Map<String, dynamic> _$$_SalesModelToJson(_$_SalesModel instance) =>
    <String, dynamic>{
      'kode_sales': instance.kodeSales,
      'nama_sales': instance.namaSales,
      'alamat': instance.alamat,
      'kota': instance.kota,
      'kode_pos': instance.kodePos,
      'telepon': instance.telepon,
      'hp': instance.hp,
      'tipe': instance.tipe,
      'area': instance.area,
    };
