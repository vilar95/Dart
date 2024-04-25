class BotClock {
  Future clock(int seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }

  Stream totiBotStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      //Contatodor de tempo
      //print('counting: $i');
      await Future.delayed(Duration(seconds: interval));

      yield i++;
    }
    print('A Stream terminou!');
  }
}
