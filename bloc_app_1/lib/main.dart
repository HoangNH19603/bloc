import 'package:bloc/bloc.dart';
import 'package:bloc_app_1/app.dart';
import 'package:bloc_app_1/counter_observer.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}