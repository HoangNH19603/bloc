part of 'time_bloc.dart';

sealed class TimeEvent extends Equatable {
  const TimeEvent();

  @override
  List<Object> get props => [];
}

class TimeStart extends TimeEvent {}
class TimeTicker extends TimeEvent {}
class TimeStop extends TimeEvent {}
