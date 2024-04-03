import 'package:bloc_ex_clock/screens/time_ticker_screen.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TimeTickerScreen()
    );
  }
}