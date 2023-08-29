import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/models.dart';
import '../../../../domain/repository/repository_impl.dart';
import '../../../../utils/network_call_handle.dart';

part 'product_list_event.dart';

part 'product_list_state.dart';

part 'product_list_bloc.freezed.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final RepositoryImpl repository;

  ProductListBloc(this.repository) : super(const ProductListState.initial()) {
    on<ProductListEvent>((event, emit) async {
      if (event is _GetProducts) {
        await _getProducts(event, emit);
      }
    });
  }

  Future<void> _getProducts(
      ProductListEvent event, Emitter<ProductListState> emit) async {

    emit(state.copyWith(status: Status.LOADING));
    final data = await repository.getProductsByCategory(event.category);

    if (data.status == Status.COMPLETED) {
      emit(state.copyWith(productList: data.data!, status: data.status));
    } else {
      emit(state.copyWith(error: data.message ?? "", status: data.status));
    }
  }
}
