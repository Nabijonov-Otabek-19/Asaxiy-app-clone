import '../../data/model/models.dart';
import '../../utils/network_call_handle.dart';

abstract class Repository {
  Future<ApiResponse<List<OfferModel>>> getOffers();

  Future<ApiResponse<List<ProductModel>>> getProductsByCategory(
      String category);

  Future<ApiResponse<List<ProductModel>>> getNewProducts();
}