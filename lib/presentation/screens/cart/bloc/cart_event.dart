part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.totalSum(List<int> keys, Box<ProductModelDB> items) =
      _TotalSum;

  const factory CartEvent.totalCount(int count) = _TotalCount;
}
