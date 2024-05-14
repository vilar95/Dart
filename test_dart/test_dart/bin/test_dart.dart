
void main(){
  print4();
  print('object1');
  print('object2');
  print('object3');
}
Future<void> print4() async{
  await Future.delayed(Duration(minutes: 1));
  print('object4');
}