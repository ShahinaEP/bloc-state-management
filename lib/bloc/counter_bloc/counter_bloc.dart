import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncress>((event, emit) {
      // TODO: implement event handler
      counter++;
      emit(CounterUpdate(counter));
    });


    on<CounterDecress>((event, emit){
      counter--;
      emit(CounterUpdate(counter));
    });
  }
}
