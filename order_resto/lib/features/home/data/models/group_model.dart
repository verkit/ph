import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_resto/core/utils/extension.dart';
import 'package:order_resto/features/home/data/models/response.dart';
import 'package:order_resto/features/home/domain/entities/group_entity.dart';

part 'group_model.freezed.dart';
part 'group_model.g.dart';

@freezed
class GrupResponse with _$GrupResponse {
  const factory GrupResponse({
    int? currentPage,
    List<GrupModel>? data,
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
  }) = _GrupResponse;

  factory GrupResponse.fromJson(Map<String, dynamic> json) => _$GrupResponseFromJson(json);
}

@freezed
class GrupModel with _$GrupModel {
  const GrupModel._();
  const factory GrupModel({
    String? kodeGrup,
    String? namaGrup,
    int? flagHapus,
    String? icon,
  }) = _GrupModel;

  factory GrupModel.fromJson(Map<String, dynamic> json) => _$GrupModelFromJson(json);

  GroupEntity toEntity() => GroupEntity(
        kode: kodeGrup!,
        name: namaGrup!.capitalize(),
        icon: icon!.replaceAll(' ', ''),
      );
}
