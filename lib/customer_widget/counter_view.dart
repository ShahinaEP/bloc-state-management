import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc/counter_bloc.dart';
Widget counterView(BuildContext context, int value){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(value.toString(), style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500
      ),),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: (){
              context.read<CounterBloc>().add(CounterIncress());
            },
            child:const Icon(Icons.add),
          ),

          FloatingActionButton(
            onPressed: (){
              if(value != 0) {
                context.read<CounterBloc>().add(CounterDecress());
              }
            },
            child:const Icon(Icons.remove),
          ),
        ],
      )
    ],
  );
}