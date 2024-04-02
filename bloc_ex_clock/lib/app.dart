import 'package:bloc_ex_clock/bloc/time_bloc.dart';
import 'package:bloc_ex_clock/models/clock_model.dart';
import 'package:bloc_ex_clock/widgets/time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  final Clock clock = const Clock();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<TimeBloc>(
        create: (context) => TimeBloc(clock: clock),
        child: const Scaffold(
          body: Center(
            child: TimeWidget(),
          ),
        ),
      ),
    );
  }
}