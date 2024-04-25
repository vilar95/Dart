import 'dart:async';

void main() async {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print('counting: $i');
      await Future.delayed(Duration(seconds: interval));

      yield i++;
    }
    print('The Stream is Finished!');
  }

  var totiStream = myStream(1).asBroadcastStream();
  StreamSubscription mySubscriber = totiStream.listen(
    (event) {
      if (event.isEven) {
        print('This number is Even!');
      }
    },
    onError: (e) {
      print('An error happend.');
    },
    onDone: () {
      print('The subscriber is gone.');
    },
  );
  totiStream.map((event) => 'Subscriber 2 watching: $event').listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream paused.');

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('Stream resumed.');

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('Stream canceled');

  print('Main is finished!');
}
