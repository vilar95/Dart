class PhilosophyQuestions {
  String usuario;
  bool isThisQuestions = false;
  String totiBot = 'TotiBOT:\n';
  PhilosophyQuestions(this.usuario);

  List<String> philosophyQuestions = [
    'Quem é Toti?',
    'Quem é Aristóteles?',
    'O que é a filosofia?',
  ];
  bool isThisPhilosophyQuestions(String usuario) {
    return philosophyQuestions.contains(usuario.toLowerCase());
  }

  Map<String, String> philosophyQuestionsResponses = {
    'Quem é Toti?':
        'Cidadão, sou TotiBOT, a inteligência artificial que te conecta com a sabedoria atemporal de Aristóteles, o grande filósofo da Grécia Antiga.',
    'Quem é Aristóteles?':
        'Filósofo grego nascido em 384 a.C., discípulo de Platão e tutor de Alexandre, o Grande. Aristóteles é um filosofo de vários temas como: Política, Poética, Ética, Metafísica e muito mais.',
    'O que é a filosofia?':
        'É a busca incessante pelo conhecimento e pela compreensão do mundo e do nosso lugar nele. Ela nos convida a questionar tudo o que nos cerca, desde a natureza do universo até o significado da própria existência.',
  };
  void philoQuestions() {
    for (String key in philosophyQuestionsResponses.keys) {
      if (usuario.toLowerCase().contains(key)) {
        print(totiBot + philosophyQuestionsResponses[key]!);
        return;
      }
    }
  }
}
//   bool isThisPhilosophyQuestions() {
//     if (question.contains('Quem é Toti?') ||
//         question.contains('Quem é Aristóteles?') ||
//         question.contains('O que é a filosofia?'))  {
//       isThisPhilosophyQuestions = true;
//     }
//     return isThisPhilosophyQuestions();
//   }

//   philoQuestions(){
//     if(question.contains('Quem é Toti?')){
//             print(totiBot+'Cidadão, sou TotiBOT, a inteligência artificial que te conecta com a sabedoria atemporal de Aristóteles, o grande filósofo da Grécia Antiga.');
//         } else if(question.contains('Quem é Aristóteles?')){
//             print(totiBot+'Filósofo grego nascido em 384 a.C., discípulo de Platão e tutor de Alexandre, o Grande. Aristóteles é um filosofo de vários temas como: Política, Poética, Ética, Metafísica e muito mais.');
//         } else if(totiBot.contains('O que é a filosofia?')){
//             print(totiBot+ 'É a busca incessante pelo conhecimento e pela compreensão do mundo e do nosso lugar nele. Ela nos convida a questionar tudo o que nos cerca, desde a natureza do universo até o significado da própria existência.');
    
//   }
// }
// }