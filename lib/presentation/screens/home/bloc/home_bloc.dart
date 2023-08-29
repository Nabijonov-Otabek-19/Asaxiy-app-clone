import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/models.dart';
import '../../../../domain/repository/repository_impl.dart';
import '../../../../utils/network_call_handle.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RepositoryImpl repository;

  HomeBloc(this.repository) : super(const HomeState.state()) {
    on<HomeEvent>((event, emit) async {
      if (event is _LoadOffers) {
        await _loadOffers(event, emit);
      } else if (event is _LoadProducts) {
        await _loadProducts(event, emit);
      }else if(event is _ChangeIndex){
      emit(state.copyWith(activeIndex: event.index));
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
