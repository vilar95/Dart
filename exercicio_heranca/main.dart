
class Endereco {
  String rua;
  String numero;
  String cidade;
  String estado;
  String cep;
  String pais;

  Endereco(this.rua, this.numero, this.cidade, this.estado, this.cep, this.pais);

  void exibirEndereco() {
    print("Endereço: $rua, $numero, $cidade, $estado, $cep, $pais");
  }
}


class Pessoa {
  String nome;
  int idade;
  String cpf;
  Endereco endereco;

  Pessoa(this.nome, this.idade, this.cpf, this.endereco);

  void exibirDadosPessoais() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("CPF: $cpf");
    endereco.exibirEndereco();
  }

  void calcularSalario(double salarioBruto, int bonus, int desconto) {
    double salarioLiquido = (salarioBruto + (salarioBruto * bonus / 100)) - (salarioBruto * desconto / 100);
    print("Salário Base: R\$ $salarioBruto");
    print("Salário Líquido: R\$ $salarioLiquido");
  }
}


class Funcionario extends Pessoa {
  double salarioBruto;
  int bonus;
  int desconto;

  Funcionario(String nome, int idade, String cpf, Endereco endereco, this.salarioBruto, this.bonus, this.desconto)
      : super(nome, idade, cpf, endereco);

  @override
  void calcularSalario(double salarioBruto, int bonus, int desconto) {
    super.calcularSalario(salarioBruto, bonus, desconto);
    print("Bônus: $bonus%");
    print("Desconto: $desconto%");
  }
}


class Usuario {
  String dataCadastro;
  String ultimoLogin;
  String senha;

  Usuario(this.dataCadastro, this.ultimoLogin, this.senha);

  void login() {

  }

  void atualizarUsuario() {

  }
}

void main() {
  Endereco enderecoFuncionario = Endereco("Rua Exemplo", "123", "Cidade Exemplo", "Estado Exemplo", "12345-678", "País Exemplo");
  Funcionario funcionario = Funcionario("Fulano", 30, "123.456.789-00", enderecoFuncionario, 1450.00, 15, 3);

  print("Dados do Funcionário:");
  funcionario.exibirDadosPessoais();
  print("\nCálculo do Salário:");
  funcionario.calcularSalario(funcionario.salarioBruto, funcionario.bonus, funcionario.desconto);
}
