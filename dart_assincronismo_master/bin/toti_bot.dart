import 'dart:io';

import 'questions/good_manners.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String totiBot = 'TotiBOT:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().totiBotStream(1, 10);
  myStream.listen(
    (event) {
      print('                                 Totibot está ativo a $event segundos');
    },
    onDone: () {
      print('TotiBot está sendo finalizado, faça a última pergunta!');
      a = false;
    },
  );

  print('-- Iniciando o TotiBOT, aguarde..--');
  await BotClock().clock(2);
  print('TotiBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(totiBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      await BotClock().clock(2);
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
    } else if (GoodManners(usuario).isThisManners(usuario)) {
      GoodManners(usuario).goodManners();
    }
     else {
      await BotClock().clock(2);
      print(totiBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(totiBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando TotiBOT--');
}
