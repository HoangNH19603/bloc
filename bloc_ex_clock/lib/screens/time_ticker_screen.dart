import 'package:bloc_ex_clock/bloc/time_bloc.dart';
import 'package:bloc_ex_clock/models/clock_model.dart';
import 'package:bloc_ex_clock/widgets/float_action_buttons.dart';
import 'package:bloc_ex_clock/widgets/time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeTickerScreen extends StatelessWidget {
  const TimeTickerScreen({super.key});

  final Clock clock = const Clock();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TimeBloc>(
      create: (context) => TimeBloc(clock: clock),
      child: const Scaffold(
        body: Center(
          child: TimeWidget(),
        ),
        floatingActionButton: ActionBtn()
      ),
    );
  }
}
