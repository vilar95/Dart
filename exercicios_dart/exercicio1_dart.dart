import 'dart:io';

void main() {
  print("Digite as três notas:");
  double nota1 = double.parse(stdin.readLineSync()!);
  double nota2 = double.parse(stdin.readLineSync()!);
  double nota3 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2 + nota3) / 3;

  print("A média das notas é: $media");
}