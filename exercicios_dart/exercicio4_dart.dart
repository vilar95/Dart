import 'dart:io';

void main() {
  print("Digite um número:");
  int numero = int.parse(stdin.readLineSync()!);

  int fatorial = 1;
  for (int i = 2; i <= numero; i++) {
    fatorial *= i;
  }

  print("O fatorial de $numero é: $fatorial");
}