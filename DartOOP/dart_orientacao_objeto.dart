void main() {
/*
Nos casos abaixo, não é utilizado named parameters, isto é,
a ordem dos valores para os respectivos parametros IMPORTA!
*/
  ContaBancaria contaBancaria = ContaBancaria("1234", 999999999.0);
  print(contaBancaria._numeroConta);
  
  ContaCorrente contaCorrente = ContaCorrente(100.0, "12345");
  print(contaCorrente._saldo);
/*
NAMED PARAMETERS
Note que:
A instância ContaPoupanca, induz a ordem de parametros -> numeroConta, taxaJuros.
Isto por que, o construtor utiliza named parameters, ou seja,
é necessário informar o nome do parametro e o seu respectivo valor, independente
da ordem.
*/
  ContaPoupanca contaPoupanca = ContaPoupanca(numeroConta: "123456", taxaJuros: 2.0);
  contaPoupanca.depositar(200.0);
  print(contaPoupanca.getSaldo());
}

class ContaBancaria {
  String? _numeroConta;
  double? _saldo;

//CONSTRUTOR -> UNAMED CONSTRUCTOR
  ContaBancaria(this._numeroConta, this._saldo);
//CONSTRUTOR -> NAMED CONSTRUCTOR
  ContaBancaria.conta(this._numeroConta);

  String?  getNumeroConta() => _numeroConta;
  
  double? getSaldo() => _saldo;
  
  void depositar(double valor) {
    _saldo = _saldo! + valor;
  }

  void sacar(double valor) {
    _saldo = _saldo! - valor;
  }
}

class ContaCorrente extends ContaBancaria {
  double? _limiteChequeEspecial;

  ContaCorrente(this._limiteChequeEspecial, String? numeroConta)
      : super.conta(numeroConta);

  @override
  void depositar(double valor) {
//VERIFICAR QUESTÕES DE LIMITE ESPECIAL
    print("ASSINE NOSSO PLANO DE MENTORIA PARA POUPAR DINHEIRO!");
    super.depositar(valor);
  }

  @override
  void sacar(double valor) {
//VERIFICAR QUESTÕES DE LIMITE ESPECIAL
    if (valor <= (super._saldo! + this._limiteChequeEspecial!)) {
      super.sacar(valor);
    } else {
      print("ENTRE EM CONTATO COM SEU GERENTE, AZEDOU!");
    }
  }
}

class ContaPoupanca extends ContaBancaria {
  double? taxaJuros;

  ContaPoupanca({this.taxaJuros, String? numeroConta})
      : super.conta(numeroConta);

  @override
  void depositar(double valor) {
    super._saldo = valor + (valor * taxaJuros!);
  }
}
