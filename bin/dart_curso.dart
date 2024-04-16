// 1 - Posicionais obrigatórios => parâmetros obrigátorios numa função; {String? cor};
// 2 - Nomeados Opcionais => parâmetros opcionais de uma função {String? cor};
// 3 - Parâmetros com "Padrão" => funções default numa fução {String cor = "sem cor"};
// 4 - Modificador "required" => O parâmetro é requerido na função {required String cor};

//import 'dart:svg';
//import 'dart:html';

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diaDesdeColheita = 40;
  bool? isMadura;

  if (diaDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }
  //Fruta fruta1 = Fruta(nome, peso, cor, sabor, diaDesdeColheita); //Criação do objeto fruta1;
  //fruta1.estaMadura(30); // Chama a função da class Fruta, com o objeto fruta1 que foi criado;
  Fruta nelancia = Fruta('Melancia', 1500.0, 'Verde', 'Doce', 40);
  nelancia.estaMadura(43);

  Alimento pao = Alimento('Pão', 5, 'Marrom');
  Legumes macaxira = Legumes('Macaxeira', 1200, 'Marrom', true);
  Legumes cenoura = Legumes('Cenoura', 120, 'Laranja', true);
  Fruta abacate = Fruta('Abacate', 250, 'Verde', 'Doce', 10);
  Fruta banana = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia = Nozes('Macadâmia', 2, 'Branca', 'Doce', 20, 35);
  Nozes castanhaCaju =
      Nozes('Castanha de Caju', 4, 'Branco e Marrom', 'Doce', 15, 25);
  Citricas limao = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);
  Citricas maracuja = Citricas('Maracujá', 120, 'Amarelo', 'Azedo', 6, 10);

  //Funções da super classe Alimento, todos filhos podem herdar;
  pao.printAlimento();
  cenoura.printAlimento();
  abacate.printAlimento();
  macaxira.printAlimento();
  banana.printAlimento();
  macadamia.printAlimento();
  castanhaCaju.printAlimento();
  limao.printAlimento();
  maracuja.printAlimento();

  //Função exclusiva da classe Legumes;
  macaxira.cozinhar();
  cenoura.cozinhar();
  //Função exclusiva da classe Fruta;
  limao.fazerSuco();
  maracuja.fazerSuco();
  abacate.fazerSuco();

  //Metodo de fazer massa subscrito da super classe Fruta;
  macadamia.fazerMassa();
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print('A $nome está madura.');
  } else {
    print('A $nome não está madura.');
  }
  if (cor != null) {
    print('A $nome é $cor.');
  }
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);
  void printAlimento() {
    print('Este(a) $nome, pesa $peso gramas e é $cor.');
  }
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome, ela foi colhida a "
        "$diasDesdeColheita dias e precisa de dias "
        "$diasParaMadura para poder comer. Ela está madura? $isMadura.");
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome.');
  }

  @override
  void separarIgradiente() {
    print('Pegar a $nome.');
  }

  @override
  void fazerMassa() {
    print(
        'Misturar a $nome com a Farinha, açucar, ovos, açucar, margarina, leite e fermento.');
  }

  @override
  void assar() {
    print('Colocar no forno à 200ºC por 30 minutos.');
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando!');
    } else {
      print('Não precisa cozinhar.');
    }
  }

  @override
  void assar() {}

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIgradiente() {
    // TODO: implement separarIgradiente
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome.');
    } else {
      print('Não existe refrigerante de $nome.');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print('Tirar a casca');
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIgradiente();
  void fazerMassa();
  void assar();
}
