part of 'product_list_bloc.dart';

@freezed
class ProductListEvent with _$ProductListEvent {
  const factory ProductListEvent.getProducts(String category) = _GetProducts;

  const factory ProductListEvent.addToCart(ProductModelDB modelDB) = _AddToCart;
}