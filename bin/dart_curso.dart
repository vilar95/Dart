// 1 - Posicionais obrigatórios => parâmetros obrigátorios numa função; {String? cor}
// 2 - Nomeados Opcionais => parâmetros opcionais de uma função {String? cor}
// 3 - Parâmetros com "Padrão" => funções default numa fução; {String cor = "sem cor"}
// 4 - Modificador "required" => O parâmetro é requerido na função; {required String cor}

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diaDesdeColheita = 40;
  bool? isMadura;

  if(diaDesdeColheita >= 30){
    isMadura = true;
  } else {
    isMadura = false;
  }
}

bool funcEstaMadura(int dias){
    if(dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, int dias, {required String cor}){
  if(dias >= 30){
    print('A $nome está madura.');
  } else {
    print('A $nome não está madura.');
  }
  if(cor != null){
    print('A $nome é $cor.');
  }
}

int funcQuantosDiasMadura(int dias){
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diaDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diaDesdeColheita, {this.isMadura});
  
  estaMadura(int diasParaMadura){
    isMadura = diaDesdeColheita >= diasParaMadura;
    print("A sua $nome, ela foi colhida a "
    "$diaDesdeColheita dias e precisa de dias "
    "$diasParaMadura para poder comer. Ela está madura? $isMadura.");

  }
}


