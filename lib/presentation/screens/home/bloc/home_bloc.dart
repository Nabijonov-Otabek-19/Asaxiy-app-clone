import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/models.dart';
import '../../../../domain/repository/repository.dart';
import '../../../../utils/network_call_handle.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Repository repository;

  HomeBloc(this.repository) : super(const HomeState.state()) {
    on<HomeEvent>((event, emit) async {
      switch (event) {
        case _LoadOffers():
          await _loadOffers(event, emit);
          break;
        case _LoadProducts():
          await _loadProducts(event, emit);
          break;
        case _ChangeDotIndex():
          emit(state.copyWith(activeIndex: event.index));
          break;
      }
    });
  }

  Future<void> _loadOffers(HomeEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.LOADING));
    final data = await repository.getOffers();
    if (data.status == Status.COMPLETED) {
      emit(state.copyWith(offerList: data.data!, status: data.status));
    } else {
      emit(state.copyWith(error: data.message ?? "", status: data.status));
    }
  }

  Future<void> _loadProducts(HomeEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.LOADING));
    final data = await repository.getNewProducts();
    if (data.status == Status.COMPLETED) {
      emit(state.copyWith(productList: data.data!, status: data.status));
    } else {
      emit(state.copyWith(error: data.message ?? "", status: data.status));
    }
  }
}
