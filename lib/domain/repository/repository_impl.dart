import 'package:asaxiy_clone/data/model/models.dart';
import 'package:asaxiy_clone/domain/repository/repository.dart';
import 'package:asaxiy_clone/utils/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../utils/network_call_handle.dart';
import '../../utils/output_utils.dart';

class RepositoryImpl extends Repository {
  final _firestore = FirebaseFirestore.instance;

  @override
  Future<ApiResponse<List<OfferModel>>> getOffers() async {
    try {
      final result = await _firestore.collection(OFFERS).get();
      final list =
          result.docs.map((e) => OfferModel(e['id'], e['imgUrl'])).toList();

      return ApiResponse.completed(list);
    } catch (e) {
      toast("Get offers error catch = $e");
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getProductsByCategory(
      String category) async {
    try {
      QuerySnapshot categorySnapshot = await _firestore
          .collection(CATEGORIES)
          .where('name', isEqualTo: category)
          .get();

      List<ProductModel> products = [];

      if (categorySnapshot.docs.isNotEmpty) {
        DocumentSnapshot categoryDoc = categorySnapshot.docs.first;

        QuerySnapshot productSnapshot =
            await categoryDoc.reference.collection(PRODUCTLIST).get();

        for (var productDoc in productSnapshot.docs) {
          ProductModel product = ProductModel(
            await productDoc['id'],
            await productDoc['title'],
            await productDoc['description'],
            await productDoc['price'],
            await productDoc['stars'],
            await productDoc['state'],
            List<String>.from(productDoc['images']),
            await productDoc['categoryName'],
          );
          products.add(product);
        }
      } else {
        return ApiResponse.error("Coming soon...");
      }
      return ApiResponse.completed(products);
    } catch (e) {
      toast("Get products by category error catch = $e");
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getNewProducts() async {
    try {
      // get new products
      return ApiResponse.completed([]);
    } catch (e) {
      toast("Get new products error catch = $e");
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<List<MenuModel>>> getCategories() async {
    try {
      final result = await _firestore.collection(CATEGORIES).get();
      final list = result.docs
          .map((e) => MenuModel(
              e['id'], e['icon'], e['color'], e['tintColor'], e['title']))
          .toList();

      return ApiResponse.completed(list);
    } catch (e) {
      toast("Get categories error catch = $e");
      return ApiResponse.error(e.toString());
    }
  }
}
