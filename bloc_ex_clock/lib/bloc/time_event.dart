part of 'time_bloc.dart';

abstract class TimeEvent {
  const TimeEvent();
}

class TimeStart extends TimeEvent {
  final DateTime tick;
  const TimeStart({required this.tick});
}

class TimeTicker extends TimeEvent {
  final DateTime tick;
  const TimeTicker({required this.tick});
}

class TimeStop extends TimeEvent {}
