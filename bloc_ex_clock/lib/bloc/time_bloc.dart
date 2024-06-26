import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_ex_clock/models/clock_model.dart';
import 'package:equatable/equatable.dart';

part 'time_event.dart';
part 'time_state.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  final Clock clock;
  StreamSubscription<DateTime>? _tickerSubscription;

  TimeBloc({required this.clock}) : super(TimeInitial(DateTime.now())) {
    _tickerSubscription = clock.ticker.listen((tick) => add(TimeTicker(tick: tick)));
    on<TimeStart>(_timeStart);
    on<TimeTicker>(_timeTicked);
    on<TimeStop>(_timeStop);
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _timeStart(TimeStart event, Emitter<TimeState> emit) {
    // _tickerSubscription?.cancel();
    _tickerSubscription = clock.ticker.listen((tick) => add(TimeTicker(tick: tick)));
  }

  void _timeTicked(TimeTicker event, Emitter<TimeState> emit) {
    emit(TimeProcess(DateTime.now()));
  }

  void _timeStop(TimeStop event, Emitter<TimeState> emit) {
    _tickerSubscription?.pause();
    emit(TimeRunPause(DateTime.now()));
  }
}
