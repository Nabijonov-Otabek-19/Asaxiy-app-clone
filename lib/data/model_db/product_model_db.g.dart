// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelDBAdapter extends TypeAdapter<ProductModelDB> {
  @override
  final int typeId = 0;

  @override
  ProductModelDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModelDB(
      fields[0] as int,
      fields[1] as String,
      fields[2] as String,
      fields[3] as int,
      fields[4] as int,
      fields[5] as String,
      (fields[6] as List).cast<String>(),
      fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModelDB obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.stars)
      ..writeByte(5)
      ..write(obj.state)
      ..writeByte(6)
      ..write(obj.images)
      ..writeByte(7)
      ..write(obj.categoryName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
