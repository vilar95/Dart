import 'dart:io';

//implementar o Timing!

class TimeQuestions {
  String hour = 'Que horas são?';
  String day = 'Que dia é hoje?';
  String year = 'Em que ano estamos?';
  String question;
  DateTime date = DateTime.now();
  String totiBot = 'TotiBOT:\n';
  bool isThisATimeQuestion = false;

  TimeQuestions(this.question);

  bool isThisTime() {
    //verificar se estamos numa pergunta sobre Tempo
    if (question.contains('horas') ||
        question.contains('Horas') ||
        question.contains('dia') ||
        question.contains('Dia') ||
        question.contains('ano') ||
        question.contains('Ano')) {
      isThisATimeQuestion = true;
    }
    return isThisATimeQuestion;
  }

  timeQuestion() {
    if (question == hour) {
      String _botAnswer =
          totiBot + ' Certo! são : ${date.hour} horas e ${date.minute} minutos!';
      print(_botAnswer);
    } else if (question == day) {
      String _botAnswer = totiBot + ' Certo! hoje é dia : ${date.day}';
      print(_botAnswer);
    } else if (question == year) {
      String _botAnswer = totiBot + ' Certo! estamos em : ${date.year}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }

  unsure() {
    if (question.contains('horas') || question.contains('Horas')) {
      String _botQuestion =
          totiBot + ' Não entendi, você quer saber das horas?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = totiBot +
            ' Beleza, são : ${date.hour} horas e ${date.minute} minutos!';
        print(_botAnswer);
      } else {
        String _botAnswer = totiBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('dia') || question.contains('Dia')) {
      String _botQuestion =
          totiBot + ' Não entendi, você quer saber que dia é hoje?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = totiBot + ' Beleza, hoje é dia: ${date.day}';
        print(_botAnswer);
      } else {
        String _botAnswer = totiBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('ano') || question.contains('Ano')) {
      String _botQuestion =
          totiBot + ' Não entendi, você quer saber em que ano estamos?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = totiBot + 
            'Caro cidadão, a tua pergunta sobre o ano em que estamos é complexa. O tempo é um rio em mutação, e só tu podes decidir em qual margem te banhar. Vive cada dia como se fosse o único, e cria o ano que tu desejas!'
            '  \n '
            'Brincadeiras a parte! estamos em : ${date.year}';
        print(_botAnswer);
      } else {
        String _botAnswer = totiBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    }
  }
}
