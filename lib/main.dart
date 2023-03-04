import 'package:bloc_statemant_larning/bloc/user_bloc/user_bloc.dart';
import 'package:bloc_statemant_larning/screen/counter_page.dart';
import 'package:bloc_statemant_larning/screen/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc/counter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>CounterBloc()),
          BlocProvider(create: (context)=>UserBloc()),
        ],
        child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.brown,
          ),
          // home: CounterPage(),
          home: UserPage(),
        ));
  }
}
