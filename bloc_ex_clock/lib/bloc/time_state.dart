part of 'time_bloc.dart';

sealed class TimeState extends Equatable {
  const TimeState(this.currentTime);

  final DateTime currentTime;

  @override
  List<Object> get props => [currentTime];
}

final class TimeInitial extends TimeState {
  const TimeInitial({required DateTime initialTime}) : super(initialTime);
}

final class TimeProcess extends TimeState {
  const TimeProcess({required timeTicker}) : super(timeTicker);
}

final class TimeRunPause extends TimeState {
  const TimeRunPause({required timeOnStop}) : super(timeOnStop);
}
