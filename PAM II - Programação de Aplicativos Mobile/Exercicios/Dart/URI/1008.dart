import 'dart:io';

main() {
  int numero = int.parse(stdin.readLineSync());
  int hrs = int.parse(stdin.readLineSync());
  double salHora = double.parse(stdin.readLineSync());

  double salTotal = salHora*hrs;

  print('NUMBER = $numero');
  print('SALARY = U\$ ' + salTotal.toStringAsFixed(2));
}
