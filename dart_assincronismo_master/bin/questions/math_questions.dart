// import 'dart:io';

// class MathQuestions {
//   String? question;
//   RegExp regex = RegExp(r'(\d+)\s*(\+|\-|\*|\/)\s*(\d+)');
//   bool isThisMathQuestion = false;
//   Match match = regex.firstMatch();
//   String totiBot = 'TotiBOT:\n';
//   MathQuestions(this.question);

//   mathQuestions() {
//       int operand1 = int.parse(match.group(1)!);
//       String operator = match.group(2)!;
//       int operand2 = int.parse(match.group(3)!);

//       int? result;

//       switch (operator) {
//         case '+':
//           result = operand1 + operand2;
//           break;
//         case '-':
//           result = operand1 - operand2;
//           break;
//         case '*':
//           result = operand1 * operand2;
//           break;
//         case '/':
//           result = operand1 ~/ operand2; 
//           break;
//         default:
//           print('Operador inválido.');
//       }

//       print('O resultado do cálculo é: $result');
//     }
//   }

