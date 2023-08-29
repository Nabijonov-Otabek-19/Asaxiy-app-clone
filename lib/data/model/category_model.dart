import 'package:asaxiy_clone/data/model/product_model.dart';

class CategoryModel {
  final int id;
  final String name;
  final List<ProductModel> productList;

  CategoryModel(this.id, this.name, this.productList);
}