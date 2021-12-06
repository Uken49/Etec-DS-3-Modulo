import 'dart:io';

main() {
  String nome;
  int idade;

  print("Digite seu nome: ");
  nome = stdin.readLineSync()!;
  print("Digite sua idade:");
  idade = int.parse(stdin.readLineSync()!);
  print("Você é ?");
  if (idade >= 12 && idade < 18) {
    print("Sou menor de idade");
  } else if (idade >= 18 && idade < 60) {
    print("Sou maior de idade!");
  } else if (idade >= 60) {
    print("Sou idoso");
  } else {
    print("Sou uma criança");
  }
}
