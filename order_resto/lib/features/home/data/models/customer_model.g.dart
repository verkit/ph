// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerResponse _$$_CustomerResponseFromJson(Map<String, dynamic> json) =>
    _$_CustomerResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CustomerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CustomerResponseToJson(_$_CustomerResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$_CustomerModel _$$_CustomerModelFromJson(Map<String, dynamic> json) =>
    _$_CustomerModel(
      idtab: json['idtab'] as int?,
      kodePelanggan: json['kode_pelanggan'] as String?,
      levelMember: json['level_member'] as String?,
      gelar: json['gelar'],
      namaPelanggan: json['nama_pelanggan'] as String?,
      kontak: json['kontak'] as String?,
      alamat: json['alamat'] as String?,
      kota: json['kota'] as String?,
      kodePos: json['kode_pos'] as String?,
      telepon: json['telepon'] as String?,
      hp: json['hp'] as String?,
      fax: json['fax'] as String?,
      npwp: json['npwp'] as String?,
      noPerkiraanLangganan: json['no_perkiraan_langganan'],
      noRekeningBank: json['no_rekening_bank'] as String?,
      namaBank: json['nama_bank'] as String?,
      kreditLimitFaktur: json['kredit_limit_faktur'] as String?,
      kreditLimitRp: json['kredit_limit_rp'] as String?,
      piutangAwal: json['piutang_awal'] as String?,
      kodecustomer: json['kodecustomer'],
      namacustomer: json['namacustomer'],
      kodesubcustomer: json['kodesubcustomer'],
      namasubcustomer: json['namasubcustomer'],
      flagcustomer: json['flagcustomer'],
      flagpesan: json['flagpesan'],
      jumlah: json['jumlah'],
      meja: json['meja'],
    );

Map<String, dynamic> _$$_CustomerModelToJson(_$_CustomerModel instance) =>
    <String, dynamic>{
      'idtab': instance.idtab,
      'kode_pelanggan': instance.kodePelanggan,
      'level_member': instance.levelMember,
      'gelar': instance.gelar,
      'nama_pelanggan': instance.namaPelanggan,
      'kontak': instance.kontak,
      'alamat': instance.alamat,
      'kota': instance.kota,
      'kode_pos': instance.kodePos,
      'telepon': instance.telepon,
      'hp': instance.hp,
      'fax': instance.fax,
      'npwp': instance.npwp,
      'no_perkiraan_langganan': instance.noPerkiraanLangganan,
      'no_rekening_bank': instance.noRekeningBank,
      'nama_bank': instance.namaBank,
      'kredit_limit_faktur': instance.kreditLimitFaktur,
      'kredit_limit_rp': instance.kreditLimitRp,
      'piutang_awal': instance.piutangAwal,
      'kodecustomer': instance.kodecustomer,
      'namacustomer': instance.namacustomer,
      'kodesubcustomer': instance.kodesubcustomer,
      'namasubcustomer': instance.namasubcustomer,
      'flagcustomer': instance.flagcustomer,
      'flagpesan': instance.flagpesan,
      'jumlah': instance.jumlah,
      'meja': instance.meja,
    };
