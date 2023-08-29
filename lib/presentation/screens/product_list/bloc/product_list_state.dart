part of 'product_list_bloc.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState.initial({
    @Default(Status.LOADING) Status status,
    @Default("") String error,
    @Default([]) List<ProductModel> productList,
  }) = _Initial;
}
