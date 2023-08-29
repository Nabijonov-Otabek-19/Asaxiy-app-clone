class ProductModel {
  final int id;
  final String title;
  final String description;
  final int price;
  final int stars;
  final String state;
  final List<String> images;
  final String categoryName;

  ProductModel(this.id, this.title, this.description, this.price, this.stars,
      this.state, this.images, this.categoryName);
}
