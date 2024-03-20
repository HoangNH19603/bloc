import 'package:bloc_app_2/timer/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BlocBuilder<TimerCubit, DateTime>(
        builder: (context, state) {
          return Text('${state.hour}:${state.minute}:${state.second}', style: Theme.of(context).textTheme.displayMedium);
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () => context.read<TimerCubit>().getTime(),
      )
    );
  }
}
