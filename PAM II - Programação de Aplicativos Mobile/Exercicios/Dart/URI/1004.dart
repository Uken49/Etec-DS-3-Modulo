import 'dart:io';

main() {
  int num1 = int.parse(stdin.readLineSync());
  int num2 = int.parse(stdin.readLineSync());
  int PROD = num1 * num2;

  print('PROD = $PROD');
}
