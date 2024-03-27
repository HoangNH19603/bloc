class Ticker {
  const Ticker();

  Stream<int> tick({required int tick}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => tick - x - 1).take(tick);
  }
}
