import 'package:hive/hive.dart';

part 'product_model_db.g.dart';

@HiveType(typeId: 0)
class ProductModelDB {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final int price;
  @HiveField(4)
  final int stars;
  @HiveField(5)
  final String state;
  @HiveField(6)
  final List<String> images;
  @HiveField(7)
  final String categoryName;

  ProductModelDB(this.id, this.title, this.description, this.price, this.stars,
      this.state, this.images, this.categoryName);

  @override
  bool operator ==(other) {
    return other is ProductModelDB && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
