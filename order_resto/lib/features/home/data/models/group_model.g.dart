// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GrupResponse _$$_GrupResponseFromJson(Map<String, dynamic> json) =>
    _$_GrupResponse(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GrupModel.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$_GrupResponseToJson(_$_GrupResponse instance) =>
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

_$_GrupModel _$$_GrupModelFromJson(Map<String, dynamic> json) => _$_GrupModel(
      kodeGrup: json['kode_grup'] as String?,
      namaGrup: json['nama_grup'] as String?,
      flagHapus: json['flag_hapus'] as int?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_GrupModelToJson(_$_GrupModel instance) =>
    <String, dynamic>{
      'kode_grup': instance.kodeGrup,
      'nama_grup': instance.namaGrup,
      'flag_hapus': instance.flagHapus,
      'icon': instance.icon,
    };
