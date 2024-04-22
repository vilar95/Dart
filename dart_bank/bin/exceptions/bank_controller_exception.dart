class SenderIdInvalidException implements Exception{
  static const String report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidException({required this.idSender});

  @override
  String toString() => "$report\nID Sender: $idSender\n";
}
class ReceiverIdInvalidException implements Exception{
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString() => "$report\nID Reciever: $idReceiver";
}
class SenderNotAuthenticatedException implements Exception{
  static const String report = "SenderNotAuthenticatedException";
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString() => "$report\nID Sender: $idSender";
}

class SenderBalanceLowerThanAmountException implements Exception{
  static const String report = "SenderBalanceLowerThanAmountException";
  String idSender;
  double senderBalance;
  double amount;
  
  SenderBalanceLowerThanAmountException({required this.idSender, required this.senderBalance, required this.amount});

  @override
  String toString() => "$report\nID Sender: $idSender\nSender balance: $senderBalance\nAmount: $amount";
}