import 'package:bloc_ex_clock/bloc/time_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimeBloc, TimeState>(
      builder: (context, state) {
        return Column(
          children: [
            Text('${state.currentTime.day}/${state.currentTime.month}/${state.currentTime.year}'),
            Text('${state.currentTime.hour}:${state.currentTime.minute}:${state.currentTime.second}'),
            ],
        );
      },
    );
  }
}
