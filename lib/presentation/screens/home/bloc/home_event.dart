part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadOffers() = _LoadOffers;

  const factory HomeEvent.loadProducts() = _LoadProducts;

  const factory HomeEvent.changeDotIndex(int index)=_ChangeIndex;
}