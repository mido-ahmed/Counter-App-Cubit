import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  static get(context) => BlocProvider.of<CounterCubit>(context);
  int counter = 0;

  void counterIncreased() {
    counter++;
    emit(CounterIncreased());
  }

  void counterDecreased() {
    counter--;
    emit(CounterIncreased());
  }
}
