class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String totiBot = 'TotiBOT:\n';
  GoodManners(this.question);
  // Refatorado com ajuda do Gimeni rs (pensei que seria possível com lista ou enum)
  List<String> goodMannersWords = [
  "oi",
  "olá",
  "obrigado",
  "obrigada",
  "bom dia",
  "boa tarde",
  "boa noite",
  "de nada",
];
bool isThisManners(String question) {
  return goodMannersWords.contains(question.toLowerCase());
}
Map<String, String> goodMannersResponses = {
  "bom dia": "Bom dia Flor do dia!",
  "boa tarde": "Opa sô, boa tarde!",
  "boa noite": "Uma bela noite, não é mesmo?",
  "oi": "Muito prazer!",
  "obrigado": "De nada, fique a vontade :)",
};

void goodManners() {
  for (String key in goodMannersResponses.keys) {
    if (question.toLowerCase().contains(key)) {
      print(totiBot + goodMannersResponses[key]!);
      return;
    }
  }
}

// Criar uma lista ou enum para refatorar.
  // bool isThisManners() {
  //   if (question.contains('oi') ||
  //       question.contains('ola') ||
  //       question.contains('olá') ||
  //       question.contains('Oi') ||
  //       question.contains('Ola') ||
  //       question.contains('Olá') ||
  //       question.contains('obrigado') ||
  //       question.contains('obrigada') ||
  //       question.contains('Obrigado') ||
  //       question.contains('Obrigada') ||
  //       question.contains('Bom dia') || 
  //       question.contains('Boa tarde') ||
  //       question.contains('Boa noite') ||
  //       question.contains('bom dia') ||
  //       question.contains('boa tarde') ||
  //       question.contains('boa noite') ||
  //       question.contains('de nada') ||
  //       question.contains('De nada')) {
  //     isThisGoodManners = true;
  //   }
  //   return isThisGoodManners;
  // }

//   goodManners(){
//     if(question.contains('Bom dia')|| question.contains('bom dia')){
//             print(totiBot+' Bom dia Flor do dia!');
//         } else if(question.contains('Boa tarde')|| question.contains('boa tarde')){
//             print(totiBot+' Opa sô, boa tarde!');
//         } else if(totiBot.contains('Boa noite')|| question.contains('boa noite')){
//             print(totiBot+ ' Uma bela noite, não é mesmo?');
//         } else if(question.contains('oi')|| question.contains('Oi') || question.contains('Ola') || question.contains('Olá') || question.contains('ola') || question.contains('olá')){
//             print(totiBot+' Muito prazer!');
//         } else if( question.contains('obrigado')|| question.contains('Obrigado') || question.contains('Obrigada')|| question.contains('obrigada')){
//             print(totiBot + ' De nada, fique a vontade :)');
//         }
//   }
// }
}