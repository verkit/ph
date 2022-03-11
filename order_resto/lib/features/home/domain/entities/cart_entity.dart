import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';

part 'cart_entity.freezed.dart';
part 'cart_entity.g.dart';

@freezed
@HiveType(typeId: 1)
class CartEntity with _$CartEntity {
  const factory CartEntity({
    @HiveField(0) required FoodEntity makanan,
    @HiveField(1) required int qty,
    @HiveField(2) String? condiman,
  }) = _CartEntity;
}
