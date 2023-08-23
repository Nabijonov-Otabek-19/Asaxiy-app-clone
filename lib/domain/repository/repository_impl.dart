import 'package:asaxiy_clone/data/model/models.dart';
import 'package:asaxiy_clone/domain/repository/repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../utils/network_call_handle.dart';

class RepositoryImpl extends Repository {
  final _firestore = FirebaseFirestore.instance;

  @override
  Future<ApiResponse<List<OfferModel>>> getOffers() async {
    try {
      final result = await _firestore.collection("offers").get();
      final list =
          result.docs.map((e) => OfferModel(e['id'], e['imgUrl'])).toList();

      return ApiResponse.completed(list);
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getProductsByCategory(
      String category) async {
    try {
      return ApiResponse.completed([]);
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getNewProducts() async {
    try {
      // get new products
      return ApiResponse.completed([]);
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }
}
