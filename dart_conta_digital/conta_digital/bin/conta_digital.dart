enum TipoConta {
  corrente,
  poupanca,
}

abstract class ContaDigital {
  String titular;
  double saldo;

  ContaDigital(this.titular, this.saldo);

  void depositar(double valor);

  void sacar(double valor);

  void exibirSaldo();

  factory ContaDigital.criarConta(
      TipoConta tipo, String titular, double saldo) {
    switch (tipo) {
      case TipoConta.corrente:
        return ContaCorrente(titular, saldo);
      case TipoConta.poupanca:
        return ContaPoupanca(titular, saldo);
      default:
        throw ArgumentError('Tipo de conta inválido');
    }
  }
}

class ContaCorrente extends ContaDigital {
  ContaCorrente(super.titular, super.saldo);

  @override
  void depositar(double valor) {
    saldo += valor;
    print('Depositado R\$ $valor na conta corrente de $titular.');
  }

  @override
  void sacar(double valor) {
    if (saldo - valor >= 0) {
      saldo -= valor;
      print('Sacado R\$ $valor da conta corrente de $titular.');
    } else {
      print('Saldo insuficiente para saque na conta corrente de $titular.');
    }
  }

  @override
  void exibirSaldo() =>
      print('Saldo da conta de $titular: R\$ ${saldo.toStringAsFixed(2)}');
}

class ContaPoupanca extends ContaDigital {
  ContaPoupanca(super.titular, super.saldo);

  @override
  void depositar(double valor) {
    saldo += valor;
    print('Depositado R\$ $valor na conta poupança de $titular.');
  }

  @override
  void sacar(double valor) {
    if (saldo - valor >= 0) {
      saldo -= valor;
      print('Sacado R\$ $valor da conta poupança de $titular.');
    } else {
      print('Saldo insuficiente para saque na conta poupança de $titular.');
    }
  }

  void rendimentoMensal(double taxa) {
    saldo *= (1 + taxa);
    print('Rendimento mensal aplicado na conta poupança de $titular.');
  }

  @override
  void exibirSaldo() =>
      print('Saldo da conta de $titular: R\$ ${saldo.toStringAsFixed(2)}');
}

void main() {
  var contaCorrente =
      ContaDigital.criarConta(TipoConta.corrente, 'Eduardo', 1000);
  var contaPoupanca =
      ContaDigital.criarConta(TipoConta.poupanca, 'Paula', 2000);

  contaCorrente.depositar(500);
  contaPoupanca.sacar(300);
  (contaPoupanca as ContaPoupanca).rendimentoMensal(13.75 / 12);

  contaCorrente.exibirSaldo();
  contaPoupanca.exibirSaldo();
}
