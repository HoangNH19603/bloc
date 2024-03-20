import 'package:bloc/bloc.dart';

class TimerCubit extends Cubit<DateTime> {
  TimerCubit() : super(DateTime.now());

  void getTime() => emit(DateTime.now());

  @override
  void onChange(Change<DateTime> change) {
    // TODO: implement onChange
    super.onChange(change);
    // ignore: avoid_print
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    // ignore: avoid_print
    print('$error, $stackTrace');
  }
}
