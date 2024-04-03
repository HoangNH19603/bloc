part of 'time_bloc.dart';

sealed class TimeState extends Equatable {
  const TimeState(this.currentTime);

  final DateTime currentTime;

  @override
  List<Object> get props => [currentTime];
}

final class TimeInitial extends TimeState {
  const TimeInitial(super.currentTime);
}

final class TimeProcess extends TimeState {
  const TimeProcess(super.currentTime);
}

final class TimeRunPause extends TimeState {
  const TimeRunPause(super.currentTime);
}
