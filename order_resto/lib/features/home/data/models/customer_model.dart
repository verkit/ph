import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_resto/features/home/domain/entities/customer_entity.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

List<CustomerModel> customerModelFromJson(String str) =>
    List<CustomerModel>.from(json.decode(str).map((x) => CustomerModel.fromJson(x)));

String customerModelToJson(List<CustomerModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CustomerResponse with _$CustomerResponse {
  const factory CustomerResponse({
    // int? currentPage,
    List<CustomerModel>? data,
    // String? firstPageUrl,
    // int? from,
    // int? lastPage,
    // String? lastPageUrl,
    // List<Link>? links,
    // String? nextPageUrl,
    // String? path,
    // @DynamicIntConverter() required int perPage,
    // String? prevPageUrl,
    // int? to,
    // int? total,
  }) = _CustomerResponse;

  factory CustomerResponse.fromJson(Map<String, dynamic> json) => _$CustomerResponseFromJson(json);
}

@freezed
class CustomerModel with _$CustomerModel {
  const CustomerModel._();
  const factory CustomerModel({
    int? idtab,
    String? kodePelanggan,
    String? levelMember,
    dynamic gelar,
    String? namaPelanggan,
    String? kontak,
    String? alamat,
    String? kota,
    String? kodePos,
    String? telepon,
    String? hp,
    String? fax,
    String? npwp,
    dynamic noPerkiraanLangganan,
    String? noRekeningBank,
    String? namaBank,
    String? kreditLimitFaktur,
    String? kreditLimitRp,
    String? piutangAwal,
    dynamic kodecustomer,
    dynamic namacustomer,
    dynamic kodesubcustomer,
    dynamic namasubcustomer,
    dynamic flagcustomer,
    dynamic flagpesan,
    dynamic jumlah,
    dynamic meja,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);

  CustomerEntity toEntity() => CustomerEntity(
        kodePelanggan: kodePelanggan!,
        namaPelanggan: namaPelanggan!,
      );
}
