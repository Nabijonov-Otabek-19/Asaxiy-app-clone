import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../../../data/model_db/product_model_db.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState.initial()) {
    on<CartEvent>((event, emit) async {
      if (event is _TotalSum) {
        await _countTotalSum(event, emit);
      } else if (event is _TotalCount) {
        await _countTotalCount(event, emit);
      } else if (event is _ChangeBNvisibility) {
        await _changeVisibility(event, emit);
      }
    });
  }

  Future<void> _countTotalSum(_TotalSum event, Emitter<CartState> emit) async {
    int total = 0;

    for (var key in event.keys) {
      final ProductModelDB data =
          event.items.get(key) ?? ProductModelDB("", "", "", 0, 0, "", [], "");

      total = total + data.price;
    }
    emit(state.copyWith(totalSum: total));
  }

  Future<void> _countTotalCount(
      _TotalCount event, Emitter<CartState> emit) async {
    emit(state.copyWith(totalCount: event.count));
  }

  Future<void> _changeVisibility(
      _ChangeBNvisibility event, Emitter<CartState> emit) async {
    emit(state.copyWith(isVisible: event.isVisible));
  }
}
