import 'package:bloc/bloc.dart';

sealed class TimerEvent {}

final class TimerEventChange extends TimerEvent {}

class TimerBloc extends Bloc<TimerEvent, DateTime> {
  TimerBloc() : super(DateTime.now()) {
    on<TimerEvent>((event, emit) => emit(DateTime.now()));
  }

  @override
  void onChange(Change<DateTime> change) {
    super.onChange(change);
    print('$change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('$error, $stackTrace');
  }

  // onTransition is invoked before onChange and contains the event which triggered the change from currentState to nextState.
  @override
  void onTransition(Transition<TimerEvent, DateTime> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  void onEvent(TimerEvent event) {
    super.onEvent(event);
    print(event);
  }
}
