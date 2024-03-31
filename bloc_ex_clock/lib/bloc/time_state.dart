part of 'time_bloc.dart';

sealed class TimeState extends Equatable {
  const TimeState();

  @override
  List<Object> get props => [];
}

final class TimeInitial extends TimeState {
  final DateTime initialTime;

  const TimeInitial({required this.initialTime});

  @override
  List<Object> get props => [initialTime];
}

final class TimeProcess extends TimeState {
  final DateTime timeTicker;

  const TimeProcess({required this.timeTicker});

  @override
  List<Object> get props => [timeTicker];
}

final class TimeRunPause extends TimeState {}
