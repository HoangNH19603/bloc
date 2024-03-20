import 'package:bloc/bloc.dart';
import 'package:bloc_app_2/app.dart';
import 'package:bloc_app_2/timer_observer.dart';
import 'package:flutter/widgets.dart';

void main() {
  Bloc.observer = const TimerBlocObserver();
  runApp(const TimerApp());
}
