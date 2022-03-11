import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_resto/features/home/data/models/response.dart';
import 'package:order_resto/features/home/domain/entities/sales_entity.dart';

part 'sales_model.freezed.dart';
part 'sales_model.g.dart';

List<SalesModel> salesModelFromJson(String str) =>
    List<SalesModel>.from(json.decode(str).map((x) => SalesModel.fromJson(x)));

String salesModelToJson(List<SalesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SalesResponse with _$SalesResponse {
  const factory SalesResponse({
    int? currentPage,
    List<SalesModel>? data,
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
  }) = _SalesResponse;

  factory SalesResponse.fromJson(Map<String, dynamic> json) => _$SalesResponseFromJson(json);
}

@freezed
class SalesModel with _$SalesModel {
  const SalesModel._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SalesModel({
    String? kodeSales,
    String? namaSales,
    String? alamat,
    String? kota,
    String? kodePos,
    String? telepon,
    String? hp,
    String? tipe,
    String? area,
  }) = _SalesModel;

  factory SalesModel.fromJson(Map<String, dynamic> json) => _$SalesModelFromJson(json);

  SalesEntity toEntity() => SalesEntity(
        kodeSales: kodeSales!,
        namaSales: namaSales!,
      );
}
