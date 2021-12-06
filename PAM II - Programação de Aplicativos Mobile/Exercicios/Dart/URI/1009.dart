import 'dart:io';

main() {
  String nome = stdin.readLineSync();
  int salFixo = int.parse(stdin.readLineSync());
  double vendas = double.parse(stdin.readLineSync());

  double salTotal = salFixo+(vendas*0.15);

  print('TOTAL = R\$' + salTotal.toStringAsFixed(2));
}
