

import 'package:bloc_statemant_larning/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_statemant_larning/customer_widget/counter_view.dart';
class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Counter"),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state){
          if (state is CounterInitial){
            return counterView(context, 0);
          }else if(state is CounterUpdate){
            return counterView(context, state.counter);
          } else{
            return Container();
          }

        },
      ),
    );
  }


}



