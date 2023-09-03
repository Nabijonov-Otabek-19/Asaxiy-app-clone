part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial({
    @Default(0) int totalSum,
    @Default(0) int totalCount,
}) = _Initial;
}
