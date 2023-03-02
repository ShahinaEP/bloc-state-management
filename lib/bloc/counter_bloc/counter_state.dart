part of 'counter_bloc.dart';

@immutable
abstract class CounterState extends Equatable{}

class CounterInitial extends CounterState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CounterUpdate extends CounterState{
   int counter;
  CounterUpdate(this.counter);
  @override
  // TODO: implement props
  List<Object?> get props => [counter];

}
