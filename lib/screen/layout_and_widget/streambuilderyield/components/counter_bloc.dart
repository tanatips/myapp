
class CounterBloc {

  Stream<List<int>> get generateNumber async* {
    final List<int> lstCounter = [];
    int counter = 1;
    while (lstCounter.length <10) {
      await Future.delayed(Duration(seconds: 1));
      lstCounter.add(counter);
      counter++;
      yield lstCounter;
    }
  }
}