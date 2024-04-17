import 'dart:io';
void main() {
  print("\nOlá! Bem vindo a calculadora de IMC!\n");
  
  print("Qual é o seu nome?");
  String? inputNome = stdin.readLineSync();
  if (inputNome == null) {
     print("POwww, informa o nome seu viado!!!");
     exit(0);
  }
  print("Qual é a sua idade?");
  String? inputIdade = stdin.readLineSync();
  int idade = int.parse(inputIdade!);
  print("Qual é a sua altura?");
  double inputAltura = double.parse(stdin.readLineSync()!);
  print("Qual é o seu peso?");
  double inputPeso = double.parse(stdin.readLineSync()!);
  double imc = inputPeso / (inputAltura * inputAltura);
  
  print('Olá $inputNome, '
      'sua idade é $idade anos, '
      '$inputPeso Kgs, $inputAltura metros de altura '
      'e o seu IMC é de $imc.');
}