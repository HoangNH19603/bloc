import 'package:bloc_app_1/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) => Text('$state', style: Theme.of(context).textTheme.displayMedium)),
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => context.read<CounterCubit>().increment()
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: FloatingActionButton(
              child: const Icon(Icons.refresh),
              onPressed: () => context.read<CounterCubit>().reset()
            ),
          ),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement()
          ),
        ],
      )
    );
  }
}