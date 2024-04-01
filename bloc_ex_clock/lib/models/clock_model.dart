import 'package:equatable/equatable.dart';

class Clock extends Equatable {
  const Clock();

  @override
  List<Object?> get props => [];

  Stream<DateTime> get ticker async* {
    while (true) {
      yield DateTime.now();
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}
