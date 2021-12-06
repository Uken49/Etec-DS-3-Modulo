import 'dart:io';

main() {
  int escolha;

  print("Escolha uma opção abaixo:");
  print("1. BIG MAC");
  print("2. QUARTEIRÃO");
  print("3. MC BACON");
  print("4. SUNDAE");

  escolha = int.parse(stdin.readLineSync()!);
  switch (escolha) {
    case 1:
      print("Você escolheu o BIG MAC");
      break;
    case 2:
      print("Você escolheu o QUARTEIRÃO");
      break;
    case 3:
      print("Você escolheu o MC BACON");
      break;
    case 4:
      print("Você escolheu o SUNDAE");
      break;
    default:
      print("Você não escolheu nada!");
  }
}
