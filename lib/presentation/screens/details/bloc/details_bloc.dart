import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_event.dart';

part 'details_state.dart';

part 'details_bloc.freezed.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(const DetailsState.initial()) {
    on<DetailsEvent>((event, emit) async {
      switch (event) {
        case _ChangeDotIndex():
          emit(state.copyWith(activeIndex: event.index));
          break;
      }
    });
  }
}
