import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_entity.freezed.dart';

@freezed
class CustomerEntity with _$CustomerEntity {
  const factory CustomerEntity({
    required String kodePelanggan,
    required String namaPelanggan,
  }) = _CustomerEntity;
}
