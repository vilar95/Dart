
import 'dart:io';

import 'questions/time_questions.dart';

void main() async {
  String totiBot = 'TotiBOT:\n';
  var a = true;
  String usuario = '';

  print('-- Iniciando o TotiBOT, aguarde..--');

  print('TotiBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(totiBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      print(totiBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(totiBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando TotiBOT--');
}
