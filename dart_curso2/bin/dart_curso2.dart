// import 'package:dart_curso2/dart_curso2.dart';

import 'dart:html';

void main() {
  //escolherMeioTransporte(Transporte.skate);

  //Set<String> registrosVisitados = <String>{};

  // registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  // registrosVisitados = registrarDestinos("Recife", registrosVisitados);
  // registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  // registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  // print(registrosVisitados);
  // print(registrosVisitados.first);
  // print(registrosVisitados.last);
  // print(registrosVisitados.isNotEmpty);
  // print(registrosVisitados.length);
  // print(registrosVisitados.contains("São Paulo"));
  // print(registrosVisitados.contains("Natal"));

  //Map<String, dynamic> registrarPrecos = {}; // Dynamic => Quando vc não sabe qual o tipo será inserido;

  //registrarPrecos["São Paulo"] = 1200;
  // registrarPrecos["Rio de Janeiro"] = 1500;
  // registrarPrecos["São Paulo"] = 1900;
  // registrarPrecos["Nova iorque"] = "Muito caro!";
  // registrarPrecos.remove("São Paulo");
  // print(registrarPrecos);
  // print(registrarPrecos["São Paulo"]);

  Viagem viagemHoje = Viagem();
  Viagem.codigoTrabalho;
 
}

class Viagem{
  static String codigoTrabalho = "DJNADS12";
  double dinheiro = 0;
  printCodigo(){
    print(codigoTrabalho);
  }
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;


}

void escolherMeioTransporte(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print('Vou de CARRO para aventura!');
      break;
    case Transporte.bike:
      print('Vou de BIKE para aventura!');
      break;
    case Transporte.onibus:
      print('Vou de BUSAO para aventura!');
      break;
    default:
      print('Estou indo pra aventura, isso que importa!!!');
      break;
  }
}

enum Transporte { carro, bike, onibus, andando, skate, aviao, patins, trem }
