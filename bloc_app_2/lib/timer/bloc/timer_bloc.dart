import 'package:bloc/bloc.dart';

sealed class TimerEvent {}

final class TimerEventChange extends TimerEvent {}

class TimerBloc extends Bloc<TimerEvent, DateTime> {
  TimerBloc() : super(DateTime.now()) {
    on<TimerEvent>((event, emit) {
      emit(DateTime.now());
    });
  }

  @override
  void onChange(Change<DateTime> change) {
    super.onChange(change);
    // ignore: avoid_print
    print('$change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    // ignore: avoid_print
    print('$error, $stackTrace');
  }
}
