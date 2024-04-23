//import 'dart:io';
import 'dart:math';
import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exception.dart';
import 'models/account.dart';

void testingNullSafety() {
  Account? myAccount = Account(name: "Vilar", balance: 200, isAuthenticated: true);

  //Simulando uma comunicação externa
  Random rng = Random();
  int radomNumber = rng.nextInt(10);
  if (radomNumber <= 5) {
    myAccount.createdAt = DateTime.now(); 
    print(myAccount.runtimeType);

    // Teste forçado que não funnciona.
    //print(myAccount.balance);
    print(myAccount.createdAt);
    //print(myAccount.createdAt.day);

    //Conversão direta: Má pratica.
    
    //print(myAccount!.balance);
    //print(myAccount.createdAt!.day);
  }

  // Teste usando if else para verificar se é nulo.
  if(myAccount != null){
    print(myAccount.balance);
    if(myAccount.createdAt != null){
      print(myAccount.createdAt!.day);
    }
  } else{
    print("Conta nula.");
  }

  // Teste usando operador ternário para verificar se é nulo.
  //print(myAccount != null ? myAccount.balance : "Conta nula.");
  
  // Chamada segura.
  //print(myAccount?.balance);


  // Teste usando if else para verificar se é nulo.
  // String? nome;
  // String sobrenome = "Vilar";
  // print(nome != null ? nome + sobrenome : 'O nome é nulo.');
  // if(nome != null){
  //   print(nome + sobrenome);
  // } else{
  //   print("O nome é nulo.");
  // }
}

void main() {
  testingNullSafety();
  // Criando o banco
  BankController bankController = BankController();
  // Adicionando contas
  //Account accountTest = Account(name: "", balance: -1000, isAuthenticated: true);
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));
  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 100);

    if (result) {
      //print("Transação realizada com sucesso!");
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("O ID ${e.idSender} do remetente não é um ID válido.");
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print("O ID ${e.idReceiver} do destinatário não é um ID válido.");
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("O usuário remetente do ID ${e.idSender} não está autenticado.");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        "O usuário de ID ${e.idSender} tentou efetuar uma tranasferência no valor de ${e.amount} reais, maior do que o do saldo de ${e.senderBalance} reais.");
  } on Exception {
    print("Algo deu errado!");
  }
}
