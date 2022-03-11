import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'food_entity.freezed.dart';
part 'food_entity.g.dart';

@freezed
@HiveType(typeId: 2)
class FoodEntity with _$FoodEntity {
  const factory FoodEntity({
    @HiveField(0) required int idtab,
    @HiveField(1) required String kodeBarang,
    @HiveField(2) required String namaBarang,
    @HiveField(3) required String grup,
    @HiveField(4) required int hargajual1,
    @HiveField(5) required String namaKemasan,
    @HiveField(6) String? gambar,
  }) = _FoodEntity;
}
