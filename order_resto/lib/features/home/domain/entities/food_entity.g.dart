// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FoodEntityAdapter extends TypeAdapter<FoodEntity> {
  @override
  final int typeId = 2;

  @override
  FoodEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FoodEntity(
      idtab: fields[0] as int,
      kodeBarang: fields[1] as String,
      namaBarang: fields[2] as String,
      grup: fields[3] as String,
      hargajual1: fields[4] as int,
      namaKemasan: fields[5] as String,
      gambar: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, FoodEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.idtab)
      ..writeByte(1)
      ..write(obj.kodeBarang)
      ..writeByte(2)
      ..write(obj.namaBarang)
      ..writeByte(3)
      ..write(obj.grup)
      ..writeByte(4)
      ..write(obj.hargajual1)
      ..writeByte(5)
      ..write(obj.namaKemasan)
      ..writeByte(6)
      ..write(obj.gambar);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
