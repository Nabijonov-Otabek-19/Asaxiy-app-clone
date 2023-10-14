part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.totalSum(List<int> keys, Box<ProductModelDB> items) =
      _TotalSum;

  const factory CartEvent.totalCount(int count) = _TotalCount;

  const factory CartEvent.changeBNvisibility(bool isVisible) =
      _ChangeBNvisibility;

  const factory CartEvent.plusItem(int count) = _PlusItem;

  const factory CartEvent.minusItem(int count) = _MinusItem;
}
