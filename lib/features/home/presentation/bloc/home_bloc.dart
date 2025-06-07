import 'package:finflux/features/home/presentation/bloc/home_event.dart';
import 'package:finflux/features/home/presentation/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(index: 0, sliderIndex: 0)) {
    on<ChangeIndex>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
    on<ChangeSlideIndex>((event, emit) {
      emit(state.copyWith(sliderIndex: event.index));
    });
  }
}
