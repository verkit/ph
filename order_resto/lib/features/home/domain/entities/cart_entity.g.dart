// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartEntityAdapter extends TypeAdapter<CartEntity> {
  @override
  final int typeId = 1;

  @override
  CartEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartEntity(
      makanan: fields[0] as FoodEntity,
      qty: fields[1] as int,
      condiman: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CartEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.makanan)
      ..writeByte(1)
      ..write(obj.qty)
      ..writeByte(2)
      ..write(obj.condiman);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
