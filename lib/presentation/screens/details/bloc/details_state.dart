part of 'details_bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.initial({
    @Default(0) int activeIndex,
  }) = _Initial;
}
