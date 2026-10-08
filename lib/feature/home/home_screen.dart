import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statue_managment/feature/home/cubit/counter_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<CounterCubit>().incrementCounte();
                    },
                    icon: const Icon(Icons.add),
                  ),
                  Text(
                    context.read<CounterCubit>().counter.toString(),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<CounterCubit>().decrementCounter();
                    },
                    icon: Icon(Icons.remove),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
