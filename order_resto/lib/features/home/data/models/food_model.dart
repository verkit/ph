import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_resto/features/home/data/models/response.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';

part 'food_model.freezed.dart';
part 'food_model.g.dart';

List<FoodModel> foodModelFromJson(String str) =>
    List<FoodModel>.from(json.decode(str).map((x) => FoodModel.fromJson(x)));

String foodModelToJson(List<FoodModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class FoodResponse with _$FoodResponse {
  const factory FoodResponse({
    int? currentPage,
    List<FoodModel>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<Link>? links,
    String? nextPageUrl,
    String? path,
    @DynamicIntConverter() required int perPage,
    String? prevPageUrl,
    int? to,
    int? total,
  }) = _FoodResponse;

  factory FoodResponse.fromJson(Map<String, dynamic> json) => _$FoodResponseFromJson(json);
}

@freezed
class FoodModel with _$FoodModel {
  const FoodModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory FoodModel({
    int? idtab,
    String? kodeBarang,
    String? namaBarang,
    // dynamic merk,
    // dynamic barcode,
    // dynamic rak,
    String? grup,
    // dynamic subgrup,
    // dynamic sn,
    // dynamic tanggalExpired,
    // dynamic type,
    // String? isi1,
    // String? isi2,
    // String? isi3,
    // String? isi4,
    String? namaKemasan,
    // String? hargaBeliakhir,
    // String? hargaDasar,
    // String? hpp,
    // String? laba1,
    // String? laba2,
    // String? laba3,
    // String? laba4,
    // String? laba5,
    // String? laba6,
    @StringDoubleConverter() required double hargajual1,
    // String? hargajual2,
    // String? hargajual3,
    // String? hargajual4,
    // String? hargajual5,
    // String? hargajual6,
    // String? discount,
    // String? discountRupiah,
    // String? point,
    // String? komisi,
    // String? betwqty1,
    // String? betwqty2,
    // String? betwqty3,
    // String? betwqty4,
    // String? betwqty5,
    // String? betwqty6,
    // String? saldoStock,
    // String? saldoJual,
    // String? saldoRusak,
    // String? saldoGudang1,
    // String? saldoGudang2,
    // String? saldoGudang3,
    // String? saldoGudang4,
    // String? saldoGudang5,
    // String? saldosales01,
    // String? saldosales02,
    // String? saldosales03,
    // String? saldosales04,
    // String? saldosales05,
    // String? saldosales06,
    // String? saldosales07,
    // String? saldosales08,
    // String? saldosales09,
    // String? saldosales10,
    // String? saldosales11,
    // String? saldosales12,
    // String? saldoBadstock,
    // String? saldoMinimal,
    // String? saldoBeli,
    // String? keterangan,
    // String? saldoAwal,
    // String? hargaAwal,
    // dynamic tanggalAwal,
    // dynamic tanggalBeliakhir,
    // dynamic satuanBeliakhir,
    // dynamic fakturBeliakhir,
    // dynamic kodeSupplier,
    // dynamic namaSupplier,
    // dynamic kodeGudang,
    // dynamic namaGudang,
    // String? hargaBeliakhir1,
    // String? hargaBeliakhir2,
    // String? stokopnameBerjalan,
    // dynamic tanggalStokopnameBerjalan,
    // dynamic barcode1,
    // dynamic barcode2,
    // dynamic satuanBarcode1,
    // dynamic satuanBarcode2,
    // String? status,
    // String? flagBkp,
    // String? flagPromo,
    // String? flagJualrugi,
    // String? flagtrans,
    // dynamic tanggalEdit,
    // dynamic userEdit,
    // String? flagGratis,
    // String? qtypromo,
    // String? qtygratis,
    // String? flagoneprice,
    // dynamic kemasan1,
    // dynamic kemasan2,
    // dynamic kemasan3,
    String? gambar,
  }) = _FoodModel;

  factory FoodModel.fromJson(Map<String, dynamic> json) => _$FoodModelFromJson(json);

  FoodEntity toEntity() => FoodEntity(
        idtab: idtab!,
        kodeBarang: kodeBarang!,
        namaBarang: namaBarang!,
        grup: grup!,
        // hargajual1: int.parse(hargajual1!),
        hargajual1: hargajual1.toInt(),
        namaKemasan: namaKemasan!.replaceAll(RegExp(r'\d'), ''),
        gambar: gambar?.replaceAll(' ', ''),
      );
}
