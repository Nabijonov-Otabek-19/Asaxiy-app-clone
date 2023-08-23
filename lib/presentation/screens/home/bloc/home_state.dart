part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.state({
    @Default(Status.LOADING) Status status,
    @Default("") String error,
    @Default([]) List<OfferModel> offerList,
    @Default([]) List<ProductModel> productList,
  }) = _State;
}
