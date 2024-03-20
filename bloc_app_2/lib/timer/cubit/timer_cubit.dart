import 'package:bloc/bloc.dart';

class TimerCubit extends Cubit<DateTime> {
  TimerCubit() : super(DateTime.now());

  void getTime() => emit(DateTime.now());

  @override
  void onChange(Change<DateTime> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('$error, $stackTrace');
  }
}
