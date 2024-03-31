import 'package:equatable/equatable.dart';

class Clock extends Equatable {
  final DateTime dateTime;

  const Clock({required this.dateTime});

  @override
  List<Object?> get props => [dateTime];
}