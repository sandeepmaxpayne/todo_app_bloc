import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<CounterIncrementEvent>((event, emit) =>
        emit(IncrementState(increasedValue: state.counterValue + 1)));
    on<CounterDecrementEvent>((event, emit) =>
        emit(DecrementState(decreasedValue: state.counterValue - 1)));
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    // TODO: implement toJson
    return state.toMap();
  }
}
