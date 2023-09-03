import 'package:asaxiy_clone/utils/output_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/models.dart';
import '../../../../data/model_db/product_model_db.dart';
import '../../../../data/source/local/local_db.dart';
import '../../../../di/di.dart';
import '../../../../domain/repository/repository.dart';
import '../../../../utils/network_call_handle.dart';

part 'product_list_event.dart';

part 'product_list_state.dart';

part 'product_list_bloc.freezed.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final Repository repository;

  ProductListBloc(this.repository) : super(const ProductListState.initial()) {
    on<ProductListEvent>((event, emit) async {
      if (event is _GetProducts) {
        await _getProducts(event, emit);
      } else if (event is _AddToCart) {
        await _addToCart(event, emit);
      }
    });
  }

  Future<void> _getProducts(
      _GetProducts event, Emitter<ProductListState> emit) async {
    emit(state.copyWith(status: Status.LOADING));
    final data = await repository.getProductsByCategory(event.category);

    if (data.status == Status.COMPLETED) {
      emit(state.copyWith(productList: data.data!, status: data.status));
    } else if (data.status == Status.ERROR) {
      emit(state.copyWith(error: data.message ?? "", status: data.status));
    }
  }

  Future<void> _addToCart(
      _AddToCart event, Emitter<ProductListState> emit) async {
    final box = di.get<DB>().box;
    // Check if a model with the same id already exists
    final ProductModelDB existingModel = box.values.firstWhere(
        (model) => model.id == event.modelDB.id,
        orElse: () => ProductModelDB(-1, "", "", 0, 0, "", [], ""));

    if (existingModel.id != -1) {
      // Handle duplicate model
      // You can choose to update the existing model or skip adding the duplicate
      toast("Already added to cart");
    } else {
      await di.get<DB>().box.add(ProductModelDB(
            event.modelDB.id,
            event.modelDB.title,
            event.modelDB.description,
            event.modelDB.price,
            event.modelDB.stars,
            event.modelDB.state,
            event.modelDB.images,
            event.modelDB.categoryName,
          ));
      toast("Product is added to cart");
    }
  }
}
