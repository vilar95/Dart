//import 'dart:io';
import 'dart:math';
import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exception.dart';
import 'models/account.dart';

void testingNullSafety(){
  Account? myAccount;

  //Simulando uma comunicação externa
  Random rng = Random();
  int radomNumber = rng.nextInt(10);
  if(radomNumber <= 5){
    myAccount = Account(name: "Eduardo", balance: 200, isAuthenticated: true);
    print(myAccount.runtimeType);
    print(myAccount.balance);

    if(myAccount != null){
      print(myAccount.balance);
    }

  }
}
void main(){
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
  try{
    bool result = bankController.makeTransfer(
  idSender: "Kako", idReceiver: "Ricarth", amount: 100);

  if(result){
    //print("Transação realizada com sucesso!");
  }
    } on SenderIdInvalidException catch(e){
      print(e);
      print("O ID ${e.idSender} do remetente não é um ID válido.");
    } on ReceiverIdInvalidException catch(e){
      print(e);
      print("O ID ${e.idReceiver} do destinatário não é um ID válido.");
    } on SenderNotAuthenticatedException catch(e){
      print(e);
      print("O usuário remetente do ID ${e.idSender} não está autenticado.");
    } on SenderBalanceLowerThanAmountException catch(e){
      print(e);
      print("O usuário de ID ${e.idSender} tentou efetuar uma tranasferência no valor de ${e.amount} reais, maior do que o do saldo de ${e.senderBalance} reais.");
    } on Exception{
      print("Algo deu errado!");
    }
}


