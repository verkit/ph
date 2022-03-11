import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_entity.freezed.dart';

@freezed
class SalesEntity with _$SalesEntity {
  const factory SalesEntity({
    required String kodeSales,
    required String namaSales,
  }) = _SalesEntity;
}
