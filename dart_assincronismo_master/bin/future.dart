void main() {
  // Future myFuture = Future((){
  //       // Terceira ação
  //       print('Going back to the Future');
  //       return 21;
  //       // Quarta ação
  //   }).then((value) => print('The value is $value'));

  //Future.delayed(Duration(seconds: 5));

  Future<int> myFutureFunc() async {
    // Primeira ação
    print('I have a function in the Future!');
    await Future.delayed(Duration(seconds: 5));
    throw Exception();
    return 12;
  }
  // Após 5 seg realiza a quinta ação
  // myFutureFunc()
  //   .then((value) => print('My function value is: $value'))
  //   .onError((error, stackTrace) => print('An error occurred!'))
  //   .whenComplete(() => print('The Future is over!'));

  Future<int> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      }
      print('I am a functional function');
      await Future.delayed(Duration(seconds: 5));
      return 42;
    } catch (e) {
      print('An error occurred: $e');
      return 42;
    } finally {
      print('The Future is finally over!');
    }
}
myFutureErrorFunc(2, 1).then((value) => print('The value is: $value.'));
  // Segunda ação
  print('Done with main');
}