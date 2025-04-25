import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/day-6/blocs/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void increment() {
    emit(state.copyWith(
      counter1: state.counter1 + 1,
    ));
  }

  void increment2() {
    emit(state.copyWith(
      counter2: state.counter2 + 1,
    ));
  }
  
  void decrement() => emit(state.copyWith(
    counter1: state.counter1 - 1,
  ));
  
  void decrement2() => emit(state.copyWith(
    counter2: state.counter2 - 1,
  ));
  
  void reset() => emit(state.copyWith(
    counter1: state.counter1 + 1,
  ));

  void reset2() => emit(state.copyWith(
    counter2: state.counter2 + 1,
  ));
  
}