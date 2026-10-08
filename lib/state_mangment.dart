import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statue_managment/feature/home/cubit/counter_cubit.dart';
import 'package:statue_managment/feature/home/home_screen.dart';

class StateMangment extends StatelessWidget {
  const StateMangment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: HomeScreen(),
      ),
    );
  }
}
