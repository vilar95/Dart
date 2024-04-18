// import 'package:dart_curso2/dart_curso2.dart';

//import 'dart:html';

import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);

  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.visitar("Museu");
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.alterarLocaisVisitados = 10;
  print(viagemMaio.consultarTotalLocaisVisitados);
  //escolherMeioTransporte(Transporte.skate);

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

  // registrarPrecos["São Paulo"] = 1200;
  // registrarPrecos["Rio de Janeiro"] = 1500;
  // registrarPrecos["São Paulo"] = 1900;
  // registrarPrecos["Nova iorque"] = "Muito caro!";
  // registrarPrecos.remove("São Paulo");
  // print(registrarPrecos);
  // print(registrarPrecos["São Paulo"]);
}
