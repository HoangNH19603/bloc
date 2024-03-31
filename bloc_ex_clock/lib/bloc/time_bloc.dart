import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'time_event.dart';
part 'time_state.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  TimeBloc() : super(TimeInitial(initialTime: DateTime.now())) {
    on<TimeEvent>((event, emit) {
    });
  }
}
