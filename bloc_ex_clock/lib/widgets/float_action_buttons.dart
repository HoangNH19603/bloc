import 'package:bloc_ex_clock/bloc/time_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionBtn extends StatelessWidget {
  const ActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimeBloc, TimeState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  context.read<TimeBloc>().add(TimeStart(tick: DateTime.now()));
                },
                icon: const Icon(Icons.play_arrow)),
            IconButton(
                onPressed: () {
                  context.read<TimeBloc>().add(TimeStop(tick: DateTime.now()));
                },
                icon: const Icon(Icons.stop)),
          ],
        );
      },
    );
  }
}
